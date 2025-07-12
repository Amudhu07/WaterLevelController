#include <xc.h>
#include "adc.h"
#include "sensors.h"
#include "motor_control.h"
#include "lcd.h"

#define _XTAL_FREQ 8000000
#define LED_PIN PORTDbits.RD7 // Define the LED pin (e.g., RB0)


// CONFIGURATION BITS
#pragma config OSC = INTIO67
#pragma config WDT = OFF
#pragma config LVP = OFF
#pragma config PBADEN = OFF
#pragma config MCLRE = OFF  // <-- key part


int dry_run_count = 0;



void init_led(){

      // Set PORTC: C0, C1, C2 as output
    TRISD &= ~(1 << 4 | 1 << 5 | 1 << 6 | 1 << 7);
    TRISC &= ~(1 << 4 | 1 << 5);
    TRISB &= ~(1 << 6 | 1 << 7);
    HIGH_LED = 1;
    LOW_LED = 0;
    PULSE_LED = 0;
    BUZZER = 0;
}

void main(void) {
   
    int Dry_run_fl = 0;
    lcd_init();
    lcd_clear();
    init_adc();
    init_led();
    init_motor();
    
    lcd_clear();
    lcd_puts("HELLO");
    while (1) {
        update_sensor_values();

        if (is_low_level() && !is_high_level()/* && (!Dry_run_fl)*/){
            motor_on();
            LOW_LED = 1;
        } else if (is_high_level()) {
            HIGH_LED = 1;
            motor_off();
        }

        if(dry_run_count > 30)
        {
            FAULT_LED = 1;
            __delay_ms(500);
            motor_off();BUZZER = 1;
            lcd_clear();
            lcd_gotoxy(1, 1);
            lcd_puts("DRY RUN");
            
            while(1);
            //__delay_ms(3000);
            Dry_run_fl = 1;
            dry_run_count = 0;
        }
        if (is_dry_run_triggered() && is_motor_running()) {

            dry_run_count++;
        }
        else{
            FAULT_LED = 0;
        }

       // __delay_ms(500);
    }
}



// #define _XTAL_FREQ 8000000
// #include <xc.h>

// #define LED LATBbits.LATB7
// #define BUZ LATBbits.LATB6

// void main(void) {
//     TRISBbits.TRISB7 = 0;  // RD7 as output
//     TRISBbits.TRISB6 = 0;  // RD7 as output
//     LED = 0;

//     while (1) {
//         LED = 1;
//         BUZ = 1;
//         __delay_ms(500);
//         LED = 0;
//         BUZ=0;
//         __delay_ms(500);
//     }
// }

// #include <xc.h>

// // CONFIGURATION BITS
// #pragma config OSC = INTIO67
// #pragma config WDT = OFF
// #pragma config LVP = OFF
// #pragma config PBADEN = OFF
// #pragma config MCLRE = OFF  // <-- key part

// #define _XTAL_FREQ 8000000
// int count =0;

// void main(void) {
//     OSCCONbits.IRCF = 0b111;
//     OSCCONbits.SCS = 0b10;

//     TRISD0 = 0;
//     TRISB7 = 0;

//     while (1) {
//         LATD0 = 1;
//         LATB7 = 1;
//         __delay_ms(500);
//         LATD0 = 0;
//         LATB7 = 0;
//         __delay_ms(500);
//     }
    
// }

