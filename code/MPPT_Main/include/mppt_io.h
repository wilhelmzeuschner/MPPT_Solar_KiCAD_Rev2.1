/*
Declarations for IO related functions
*/

#ifndef __MPPT_IO
#define __MPPT_IO

#include "mppt_pins.h"

//Sets all IO to the specified function / state
void mppt_io_init();

//Read the output voltage of the boost converter
void mppt_io_read_output_voltage(int avg_count, volatile float &voltage);


//Increase PWM value
void mppt_inc_boost_pwm();
//Decrease PWM value
void mppt_dec_boost_pwm();

//Initialize PWM for the boost converter
void mppt_init_boost_pwm();
//"Arm" / "disarm" the gate driver for the boost converter; PWM signal get's passed on to the mosfet's gate
void mppt_boost_enable();
void mppt_boost_disable();

//Set the PWM value
void mppt_set_boost_pwm(volatile int &pwm_val);

//LEDs
void mppt_leds_state(byte state);

#endif