#include <Arduino.h>
#include <Wire.h>

#include <INA.h>

#include "mppt_pins.h"
#include "mppt_config.h"
#include "ina_sensor.h"
#include "mppt_io.h"
#include "mppt_control_algo.h"
#include "mppt_main.h"

INA_Class INA(1); //INA class instantiation to use RAM, one instance

void setup()
{
    static volatile unsigned long mppt_algo_timer = 0;
    mppt_io_init();
    mppt_init_boost_pwm();
    analogReadResolution(MPPT_ADC_RESOLUTION);

    //Serial port
    if (ENABLE_SERIAL_DEBUG)
    {
        DEBUG_SERIAL.begin(DEBUG_SERIAL_BAUD);
        delay(1000);
        DEBUG_SERIAL.println(F("MPPT started."));
    }

    //INA226 power sensor
    ina_begin(INA);


    //Main program loop
    DEBUG_SERIAL.println(F("Starting MPPT algorithm."));
    mppt_boost_enable();
    while (true)
    {
        if (millis() - mppt_algo_timer >= MPPT_ALGORITHM_DELAY) {
            mppt_algo(INA, 1);
            mppt_algo_timer = millis();
            //Serial.println(mppt_algo_timer);
        }
        else {
            mppt_algo(INA, 0);
        }
                
    }
}

//void loop() is no used since it is slower than a simple while(true)
void loop()
{
}