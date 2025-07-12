#include <xc.h>
#include <stdint.h>
#include "eeprom_utils.h"

void write_eeprom(uint8_t address, uint8_t data) {
    EEADR = address;
    EEDATA = data;
    EECON1bits.EEPGD = 0;
    EECON1bits.CFGS = 0;
    EECON1bits.WREN = 1;
    INTCONbits.GIE = 0;
    EECON2 = 0x55;
    EECON2 = 0xAA;
    EECON1bits.WR = 1;
    while(EECON1bits.WR);
    EECON1bits.WREN = 0;
    INTCONbits.GIE = 1;
}

uint8_t read_eeprom(uint8_t address) {
    EEADR = address;
    EECON1bits.EEPGD = 0;
    EECON1bits.CFGS = 0;
    EECON1bits.RD = 1;
    return EEDATA;
}