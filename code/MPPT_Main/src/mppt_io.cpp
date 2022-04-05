/*
IO related functions
*/
#include <Arduino.h>

#include "mppt_pins.h"
#include "mppt_io.h"
#include "ina_sensor.h"
#include "mppt_config.h"
#include "mppt_main.h"

// Automatically retrieve TIM instance and channel associated to pin
// This is used to be compatible with all STM32 series automatically.
TIM_TypeDef *Instance = (TIM_TypeDef *)pinmap_peripheral(digitalPinToPinName(BOOST_DRIVE_PIN), PinMap_PWM);
uint32_t channel = STM_PIN_CHANNEL(pinmap_function(digitalPinToPinName(BOOST_DRIVE_PIN), PinMap_PWM));

// Instantiate HardwareTimer object. Thanks to 'new' instantiation, HardwareTimer is not destructed when setup function is finished.
HardwareTimer *MyTim = new HardwareTimer(Instance);

/*extern*/ volatile int boost_pwm_val;

//Sets all IO to the specified function / state
void mppt_io_init()
{
    //Inputs
    pinMode(BTN1_PIN, INPUT_PULLUP);
    pinMode(BTN2_PIN, INPUT_PULLUP);
    pinMode(V_SENSE_OUT_PIN, INPUT); //INPUT_ANALOG?

    //Input with interrupt
    pinMode(ALERT_ISENS_PIN, INPUT_PULLUP);
    attachInterrupt(ALERT_ISENS_PIN, ina_process_alert, FALLING);

    //Outputs
    pinMode(LED1_PIN, OUTPUT);
    pinMode(LED2_PIN, OUTPUT);
    pinMode(LED3_PIN, OUTPUT);

    pinMode(CAN_STBY_PIN, OUTPUT);
    digitalWriteFast(CAN_STBY_PIN, CAN_STBY_ON); //Set CAN transceiver to standby

    pinMode(BOOST_EN_PIN, OUTPUT);
    digitalWriteFast(BOOST_EN_PIN, BOOST_EN_OFF); //Turn gate driver off

    //PinMode not needed, if it gets configured by using the PWM functionality
    pinMode(BOOST_DRIVE_PIN, OUTPUT);
    digitalWriteFast(BOOST_DRIVE_PIN, 0); //Turn gate signal off
}

//Read the output voltage of the boost converter
void mppt_io_read_output_voltage(int avg_count, volatile float &voltage)
{

    unsigned int adc_readings = 0;
    for (int i = 0; i < avg_count; i++)
    {
        adc_readings += analogRead(V_SENSE_OUT_PIN);
    }
    voltage = (adc_readings / avg_count) * MPPT_OUT_VOLTAGE_DIVIDER_FACTOR * ((float)MPPT_ADC_REF_VOLTAGE / (float)MPPT_ADC_MAX_READING);
}

//"Arm" / "disarm" the gate driver for the boost converter; PWM signal get's passed on to the mosfet's gate
void mppt_boost_enable()
{
    digitalWriteFast(BOOST_EN_PIN, BOOST_EN_ON);
}
void mppt_boost_disable()
{
    digitalWriteFast(BOOST_EN_PIN, BOOST_EN_OFF);
}

//Initialize PWM for the boost converter
void mppt_init_boost_pwm()
{
    MyTim->setMode(channel, TIMER_OUTPUT_COMPARE_PWM1, BOOST_DRIVE_PIN); //PWM mode setting: hardware PWM channel, PWM mode, PWM pin
    // MyTim->setPrescaleFactor(8); // Due to setOverflow with MICROSEC_FORMAT, prescaler will be computed automatically based on timer input clock
    MyTim->setOverflow(10, MICROSEC_FORMAT);                  //This sets the PWM "frequency" in microseconds!! -> 1/setting = pwm_freq; setting of 10: 100kHz
    MyTim->setCaptureCompare(channel, 0, MPPT_BOOST_PWM_RES); //Initial value 0 (PWM OFF)

    MyTim->resume(); //Start PWM
}

//Increase PWM value
void mppt_inc_boost_pwm()
{
    if (boost_pwm_val < MPPT_BOOST_MAX_PWM_VAL)
    {
        boost_pwm_val += MPPT_BOOST_PWM_STEP_SIZE;
        mppt_set_boost_pwm(boost_pwm_val);
    }
}

//Decrease PWM value
void mppt_dec_boost_pwm()
{
    if (boost_pwm_val > MPPT_BOOST_MIN_PWM_VAL)
    {
        boost_pwm_val -= MPPT_BOOST_PWM_STEP_SIZE;
        mppt_set_boost_pwm(boost_pwm_val);
    }
}

//Set the PWM value
void mppt_set_boost_pwm(volatile int &pwm_val)
{
    MyTim->setCaptureCompare(channel, pwm_val, MPPT_BOOST_PWM_RES);
}


//LEDs
void mppt_leds_state(byte state)
{
    switch (state)
    {
    case 0: //ERROR
        digitalWriteFast(LED_RED_PIN, 1);
        digitalWriteFast(LED_GREEN_PIN, 0);
        digitalWriteFast(LED_BLUE_PIN, 0);
        break;
    case 1: //PWM value gets decreased
        digitalWriteFast(LED_RED_PIN, 1);
        digitalWriteFast(LED_GREEN_PIN, 0);
        digitalWriteFast(LED_BLUE_PIN, 0);
        break;
    case 2: //PWM value gets increased by MPPT algo
        digitalWriteFast(LED_RED_PIN, 0);
        digitalWriteFast(LED_GREEN_PIN, 1);
        digitalWriteFast(LED_BLUE_PIN, 0);
        break;
    case 3: //PWM value gets decreased by MPPT algo
        digitalWriteFast(LED_RED_PIN, 0);
        digitalWriteFast(LED_GREEN_PIN, 0);
        digitalWriteFast(LED_BLUE_PIN, 1);
        break;
    default: //All LEDs off if invalid value
        digitalWriteFast(LED_RED_PIN, 0);
        digitalWriteFast(LED_GREEN_PIN, 0);
        digitalWriteFast(LED_BLUE_PIN, 0);
        break;
    }
}


