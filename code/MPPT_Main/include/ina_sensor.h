/*
Declarations for the INA226 power sensor
*/

#ifndef __INA_SENSOR
#define __INA_SENSOR

#include <INA.h> //Library
#include "mppt_config.h"

//INA config
const uint32_t SHUNT_MICRO_OHM = MPPT_INA_SHUNT;        //< Shunt resistance in Micro-Ohm, e.g. 100000 is 0.1 Ohm
const uint16_t MAXIMUM_AMPS = 10;                       //< Max expected amps, clamped from 1A to a max of 1022A
const uint32_t BUS_CONVERSION = 148;                    //pre-set: 8500
const uint32_t SHUNT_CONVERSION = 148;                  //pre-set: 8500
const uint16_t INA_MODE = INA_MODE_CONTINUOUS_BOTH;
const uint32_t ALTERT_VOLTAGE = 5000;                   //Millivolts!
const uint8_t AVERAGING_TIMES = 4;                      //pre-set: 128

//Function declarations

//Initialize sensor
void ina_begin(INA_Class &INA);

//Processes an alert signal from the INA
volatile void ina_process_alert();

//Read current input voltage and power
void ina_read_voltage_and_power(INA_Class &INA, volatile float &in_voltage, volatile float &in_pwr);

//Read current input voltage
void ina_read_voltage(INA_Class &INA, volatile float &in_voltage);

//Read current input power
void ina_read_power_milli_watt(INA_Class &INA, volatile float &in_pwr);

#endif