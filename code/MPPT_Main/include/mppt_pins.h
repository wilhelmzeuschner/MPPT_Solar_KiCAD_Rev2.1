/*
Pin definitions
*/

#ifndef __MPPT_PINS
#define __MPPT_PINS


//LEDs for status indication etc.
#define LED1_PIN        PB_14        //Blue LED
#define LED2_PIN        PB_15        //Green LED
#define LED3_PIN        PA_8         //Red LED
#define LED_BLUE_PIN    LED1_PIN
#define LED_GREEN_PIN   LED2_PIN
#define LED_RED_PIN     LED3_PIN

//Buttons
#define BTN1_PIN        PB_3         //Top (SW4)
#define BTN2_PIN        PB_4         //Bottom (SW5)

//CAN Bus Pins
#define CAN_RX_PIN      PB_8
#define CAN_TX_PIN      PB_9
#define CAN_STBY_PIN    PB_5
#define CAN_STBY_ON     1
#define CAN_STBY_OFF    0

//Boost control pins
#define BOOST_DRIVE_PIN PA_7
#define BOOST_EN_PIN    PA_6
#define BOOST_EN_ON     1
#define BOOST_EN_OFF    0

//Output voltage sensing
#define V_SENSE_OUT_PIN PA_3

//INA226 signals
#define ALERT_ISENS_PIN PB_13        //Overcurrent alert input to STM32
#define SDA_1           PB_7
#define SCL_1           PB_6


#endif