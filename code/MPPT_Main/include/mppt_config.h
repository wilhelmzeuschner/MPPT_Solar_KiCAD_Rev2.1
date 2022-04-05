/*
Configuration file
*/
#include <Arduino.h>

#ifndef __MPPT_CONFIG
#define __MPPT_CONFIG

//Debug serial (UART)
#define ENABLE_SERIAL_DEBUG true
#define DEBUG_SERIAL        Serial
#define DEBUG_SERIAL_BAUD   115200

//CAN Bus functionality
//(not implemented)
#define ENABLE_CAN_BUS      false

//MPPT related settings
#define MPPT_MAX_OUT_VOLTAGE        50      		//MAXIMUM battery voltage / MPPT output (default 50.2)
#define MPPT_MIN_IN_VOLTAGE         10      		//MINIMUM panel / input voltage
#define MPPT_MAX_PIN_MILLI_WATT		130 * 1000		//MAXIMUM INPUT power, if exceeded, the output voltage will be reduced (safe limit 130W); unit of this define is mW

#define MPPT_ALGORITHM_DELAY        1      	//How often the preturb and observe algorithm gets executed, value is the time (in ms) before the algorithm gets called again => frequency = 1/MPPT_ALGORITHM_DELAY

//Boost converter
#define MPPT_BOOST_MAX_PWM_VAL      1023
#define MPPT_BOOST_MIN_PWM_VAL      0
#define MPPT_BOOST_PWM_RES          RESOLUTION_10B_COMPARE_FORMAT   //"resolution" for PWM
#define MPPT_BOOST_PWM_STEP_SIZE    5

//ADC accuracy / bits for output voltage measurement
#define MPPT_ADC_RESOLUTION             12
const int MPPT_ADC_MAX_READING =        pow(2, MPPT_ADC_RESOLUTION) - 1;
const float MPPT_ADC_REF_VOLTAGE =      3.3;
#define MPPT_ADC_READING_AVG_COUNT      1

//MPPT output voltage divider resistor values
const unsigned int MPPT_OUT_VOLTAGE_R_UPPER = 20000;       //Upper resistor in the divider
const unsigned int MPPT_OUT_VOLTAGE_R_LOWER = 1000;        //Lower resistor in the divider, the ADC measures across this resistor
const unsigned int MPPT_OUT_VOLTAGE_R_SUM = MPPT_OUT_VOLTAGE_R_LOWER + MPPT_OUT_VOLTAGE_R_UPPER;     //Sum of both, makes calculation easier

const float MPPT_OUT_VOLTAGE_DIVIDER_FACTOR = (float)MPPT_OUT_VOLTAGE_R_SUM / (float)MPPT_OUT_VOLTAGE_R_LOWER;

//INA226 current sensor settings
#define MPPT_INA_SHUNT                   10000


#endif