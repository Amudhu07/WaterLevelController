#ifndef MOTOR_CONTROL_H
#define MOTOR_CONTROL_H

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

void init_motor(void);
void motor_on(void);
void motor_off(void);
void motor_pulse_on(void);
void motor_pulse_off(void);
bool is_motor_running(void);

// Relay Control (PORTD)
// #define RELAY_1        LATDbits.LATD6
// #define RELAY_2       LATDbits.LATD5
// #define RELAY_3         LATDbits.LATD4

 

 // LED Indicators (PORTC)
 #define FAULT_LED           LATCbits.LATC2

 #define HIGH_LED LATCbits.LATC5
 #define LOW_LED  LATCbits.LATC4


#define RELAY_1        LATDbits.LATD3
#define RELAY_2       LATDbits.LATD2

// LED Indicators (PORTC)

#define BUZZER            LATBbits.LATB6
#define PULSE_LED            LATBbits.LATB7


#endif