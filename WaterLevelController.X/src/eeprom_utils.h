#ifndef EEPROM_UTILS_H
#define EEPROM_UTILS_H

#include <stdint.h>

void write_eeprom(uint8_t address, uint8_t data);
uint8_t read_eeprom(uint8_t address);

#endif