#include <xc.h>

// CONFIGURATION BITS
#pragma config OSC = INTIO67
#pragma config WDT = OFF
#pragma config LVP = OFF
#pragma config PBADEN = OFF
#pragma config MCLRE = OFF  // <-- key part

#define _XTAL_FREQ 8000000
int count =0;

void main(void) {
    OSCCONbits.IRCF = 0b111;
    OSCCONbits.SCS = 0b10;

    TRISD0 = 0;

    while (1) {
        LATD0 = 1;
        __delay_ms(500);
        LATD0 = 0;
        __delay_ms(500);
    }
    
}
