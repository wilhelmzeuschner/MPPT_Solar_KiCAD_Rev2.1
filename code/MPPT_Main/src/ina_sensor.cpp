/*
Code for the INA226 power sensor
*/

#include <INA.h>

#include "ina_sensor.h"
#include "mppt_pins.h"

void ina_begin(INA_Class &INA)
{
    //Initialize INA sensor
    uint8_t devicesFound = INA.begin(MAXIMUM_AMPS, SHUNT_MICRO_OHM);
    while (devicesFound == 0)
    {
        Serial.println(F("No INA device found, retrying in 1 second..."));
        delay(1000);                                             // Wait 1 second before retrying
        devicesFound = INA.begin(MAXIMUM_AMPS, SHUNT_MICRO_OHM); // Expected max Amp & shunt resistance
    }
    Serial.println(F("Found INA226 sensor."));

    //Set conversion values and warning threshold
    INA.setBusConversion(BUS_CONVERSION);            // Maximum conversion time 8.244ms (8500)
    INA.setShuntConversion(SHUNT_CONVERSION);        // Maximum conversion time 8.244ms (8500)
    INA.setAveraging(AVERAGING_TIMES);               // Average each reading n-times
    INA.setMode(INA_MODE);                           // Bus/shunt measured continuously
    INA.alertOnBusOverVoltage(true, ALTERT_VOLTAGE); // Trigger alert if over ALTERT_VOLTAGE on bus
}

volatile void ina_process_alert()
{
    //Serial.println(F("Alert"));
    digitalToggleFast(LED_RED_PIN);
}

//Read current input voltage and power
void ina_read_voltage_and_power(INA_Class &INA, volatile float &in_voltage, volatile float &in_pwr)
{
    in_pwr = INA.getBusMicroWatts() / 1000.0;
    in_voltage = INA.getBusMilliVolts() / 1000.0;
}

//Read current input voltage
void ina_read_voltage(INA_Class &INA, volatile float &in_voltage)
{
    in_voltage = INA.getBusMilliVolts() / 1000.0;
}

//Read current input power (in mW)
void ina_read_power_milli_watt(INA_Class &INA, volatile float &in_pwr)
{
    in_pwr = INA.getBusMicroWatts() / 1000.0;
}