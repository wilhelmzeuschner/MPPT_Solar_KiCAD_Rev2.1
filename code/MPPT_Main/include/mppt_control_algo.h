/*
MPPT algorithm
*/

#ifndef __MPPT_CONTROL_ALGO
#define __MPPT_CONTROL_ALGO

#include "mppt_pins.h"
#include "ina_sensor.h"
#include "mppt_io.h"



//Main MPPT control function
int mppt_algo(INA_Class &INA, bool run_preturb);

#endif