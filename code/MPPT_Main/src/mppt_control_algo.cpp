/*
MPPT algorithm
*/

#include "mppt_control_algo.h"
#include "mppt_pins.h"
#include "ina_sensor.h"
#include "mppt_io.h"
#include "mppt_main.h"

#define MAX(a, b) (((a) > (b)) ? (a) : (b)) // Determine maximum of a and b

/*extern*/ volatile float in_voltage, in_power, in_power_check_max, out_voltage;
volatile float in_power_1, in_power_2, in_power_initial;

/*
This algorithm is pretty simple.
It is based the preturb and observere algorithm to track the maximum power point
Input power gets raised by raising the ouput voltage, respecting the maximum allowed output voltage.

potential issues:
	p&o gets skipped if one of the previous conditions is true -> implement return or ignore?
*/
int mppt_algo(INA_Class &INA, bool run_preturb)
{
	// Reference values for previous power readings (last preturb and observe cycle)
	// These get compared to the new values and based on the result of the comparision the pulse width gets adjusted
	static volatile bool mppt_pwm_change_direction = 0; // 0-> PWM was decreased; 1-> PWM was increased
	static volatile float mppt_prev_in_power = 0;		// Measured input power of the last p&o run

	// Measure current values
	mppt_io_read_output_voltage(MPPT_ADC_READING_AVG_COUNT, out_voltage);
	ina_read_voltage(INA, in_voltage);

	//////////////////////////////////////////////////////////////////
	// FAIL SAFE DETECTIONS BELOW
	//////////////////////////////////////////////////////////////////

	// Last resort fail safe; output voltage is way too high
	if (out_voltage > (MPPT_MAX_OUT_VOLTAGE + 5))
	{

		while (out_voltage > MPPT_MAX_OUT_VOLTAGE)
		{
			mppt_dec_boost_pwm();
			mppt_leds_state(255);
			mppt_io_read_output_voltage(MPPT_ADC_READING_AVG_COUNT, out_voltage);
		}
		DEBUG_SERIAL.println(F("!FAIL MAX VOUT!"));

		return -1;
	}

	// Last resort fail safe; input power is way too high
	ina_read_power_milli_watt(INA, in_power_check_max);
	if (in_power_check_max > (MPPT_MAX_PIN_MILLI_WATT))
	{

		while (in_power_check_max > MPPT_MAX_PIN_MILLI_WATT)
		{
			mppt_dec_boost_pwm();
			// mppt_leds_state(255);
			ina_read_power_milli_watt(INA, in_power_check_max);
		}
		DEBUG_SERIAL.println(F("!FAIL MAX PIN!"));

		return -1;
	}

	// Output Short Circuit Detection
	// If the output voltage is approx. 0V, there has to be a short to GND.
	// Otherwise at least the Panel Voltage is present, since the output is always connected to the input via the main inductor
	mppt_io_read_output_voltage(MPPT_ADC_READING_AVG_COUNT, out_voltage);
	if (out_voltage < 1) {
		//mppt_boost_disable();
		int zero = 0;
		mppt_set_boost_pwm(zero);
		DEBUG_SERIAL.println(F("!FAIL OUTPUT SHORTED!"));
		return -1;
	}

	//////////////////////////////////////////////////////////////////
	// MAIN MPPT CONTROL ALGORITHM
	//////////////////////////////////////////////////////////////////

	// Check that the maximum output voltage is not exceeded
	if (out_voltage > MPPT_MAX_OUT_VOLTAGE)
	{
		mppt_dec_boost_pwm();
		mppt_leds_state(0);

		// Serial.println(F("OUT_V"));
	}
	// Check that the panel voltage is not under the allowed minimum
	else if (in_voltage < MPPT_MIN_IN_VOLTAGE)
	{
		mppt_dec_boost_pwm();
		mppt_leds_state(0);

		// Serial.println(F("PAN_V"));
	}

	// MPPT algorithm (preturb and observe)
	// Runs only with the set frequency (mppt_config.h)
	// The caller specifies if this should run by setting run_preturb to true
	else if (run_preturb)
	{
		// Read the current input power
		ina_read_power_milli_watt(INA, in_power);

		// The pulse width was increased in the previous run
		if (mppt_pwm_change_direction)
		{
			// Check if the input power has increased as well
			// If the power has increased, increase the pulse width further
			if (in_power > mppt_prev_in_power)
			{
				mppt_pwm_change_direction = 1;
				mppt_inc_boost_pwm();
			}
			// If the input power has decreased, start to decrease the pulse width
			else if (in_power < mppt_prev_in_power)
			{
				mppt_pwm_change_direction = 0;
				mppt_dec_boost_pwm();
			}
		}

		// The pulse width was decreased in the previous run
		else
		{
			// Check if the input power has increased
			// If the power has increased, decrease the pulse width further
			if (in_power > mppt_prev_in_power)
			{
				mppt_pwm_change_direction = 0;
				mppt_dec_boost_pwm();
			}
			// If the input power has decreased, start to increase the pulse width
			else if (in_power < mppt_prev_in_power)
			{
				mppt_pwm_change_direction = 1;
				mppt_inc_boost_pwm();
			}
		}

		// Set reference for the next run
		mppt_prev_in_power = in_power;
	}
	return 0;
}