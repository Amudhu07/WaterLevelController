#ifndef ADC_H
#define ADC_H

#include <xc.h>
#include <stdint.h>

void init_adc(void);
float read_adc_voltage(uint8_t channel);
uint16_t read_adc_raw(uint8_t channel);

#endif