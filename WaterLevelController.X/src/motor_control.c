#include "motor_control.h"
#define _XTAL_FREQ 8000000  // or whatever your crystal frequency is

// #define RELAY_1    LATDbits.LATD0
// #define RELAY_2   LATDbits.LATD1
// #define MOTOR_LED   LATDbits.LATD2

static bool motor_state = false;

// void init_motor(void) {
//     // TRISD &= ~(1 << 0 | 1 << 1 | 1 << 2);
//     // RELAY_1 = 0;
//     // RELAY_2 = 0;
//     // MOTOR_LED = 0;

// }
void init_motor(void) {
    // // Set PORTD: D4, D5, D6 as output
    // TRISD &= ~(1 << 4 | 1 << 5 | 1 << 6);
    // // Set PORTC: C0, C1, C2 as output
    // TRISC &= ~(1 << 0 | 1 << 1 | 1 << 2);

    // Set PORTD: D4, D5, D6 as output
    TRISD &= ~(1 << 3 | 1 << 2);
  

    // Initialize all outputs to LOW
    RELAY_1 = 0;
    RELAY_2 = 0;

    // //MOTOR_ON_LED = 0;
    // WATER_FLOW_LED = 0;
    // FAULT_LED = 0;
}


void motor_on(void) {
    //motor_pulse_on();
    //MOTOR_ON_LED = 1;
    RELAY_1 = 1;
    RELAY_2 = 0;
    motor_state = true;
}

void motor_off(void) {
    //motor_pulse_off();
    //MOTOR_ON_LED = 0;
    RELAY_1 = 0;
    RELAY_2 = 1;
    motor_state = false;
}

void motor_pulse_on(void) {
    RELAY_2 = 1;
    __delay_ms(500);
    RELAY_1 = 1;
    __delay_ms(2000);
    RELAY_1 = 0;
}

void motor_pulse_off(void) {
    RELAY_2 = 0;
    RELAY_1 = 0;
}

bool is_motor_running(void) {
    return motor_state;
}