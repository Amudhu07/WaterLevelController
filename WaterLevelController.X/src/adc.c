#include <xc.h>
#include <stdint.h>
#include "adc.h"
#define _XTAL_FREQ 8000000  // Define your oscillator frequency

void init_adc(void) {
    // 1. Set RE0 (AN5), RE1 (AN6), RE2 (AN7) as input
    TRISEbits.TRISE0 = 1;  // AN5
    TRISEbits.TRISE1 = 1;  // AN6
    TRISEbits.TRISE2 = 1;  // AN7

    // 2. Configure analog inputs: AN5-AN7 analog, others digital
    ADCON1 = 0x05;  // Refer to Table 17-3 in datasheet

    // 3. Configure ADC conversion settings
    ADCON2bits.ADFM = 1;     // Right justified
    ADCON2bits.ACQT = 0b010; // Acquisition time = 4 TAD
    ADCON2bits.ADCS = 0b010; // Clock = Fosc/32

    // 4. Default channel selection (AN5)
    ADCON0bits.CHS = 0b0101;
    ADCON0bits.ADON = 1;     // Enable ADC
}

uint16_t read_adc_raw(uint8_t channel) {
    if (channel > 7) return 0; // Channel limit for PIC18F4520

    // Mask and set channel (bits 5:2 of ADCON0)
    ADCON0 &= 0b11000011;
    ADCON0 |= (channel << 2);

    __delay_us(10);           // Acquisition delay
    ADCON0bits.GO = 1;        // Start conversion
    while (ADCON0bits.GO);    // Wait for completion

    // Combine ADRESH and ADRESL for 10-bit result
    return ((uint16_t)ADRESH << 8) | ADRESL;
}

float read_adc_voltage(uint8_t channel) {
    uint16_t raw = read_adc_raw(channel);
    return (raw * 5.0) / 1023.0; // Assuming Vref+ = 5V
}
