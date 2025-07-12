#include <xc.h>
#include "rtc_ds1307.h"
#include "i2c.h"

#define DS1307_ADDRESS 0xD0
#define SIGNATURE 0x55

static uint8_t bin2bcd(uint8_t val) {
    return ((val / 10) << 4) | (val % 10);
}

static uint8_t bcd2bin(uint8_t val) {
    return ((val >> 4) * 10) + (val & 0x0F);
}

void rtc_init(void) {
    i2c_init();
}

void rtc_set_time(uint8_t hour, uint8_t min, uint8_t sec) {
    i2c_start();
    i2c_write(DS1307_ADDRESS);
    i2c_write(0x00);
    i2c_write(bin2bcd(sec));
    i2c_write(bin2bcd(min));
    i2c_write(bin2bcd(hour));
    i2c_stop();
}

void rtc_get_time(uint8_t *hour, uint8_t *min, uint8_t *sec) {
    i2c_start();
    i2c_write(DS1307_ADDRESS);
    i2c_write(0x00);
    i2c_start();
    i2c_write(DS1307_ADDRESS | 1);
    *sec = bcd2bin(i2c_read(1));
    *min = bcd2bin(i2c_read(1));
    *hour = bcd2bin(i2c_read(0));
    i2c_stop();
}

void rtc_write_eeprom32(uint8_t addr, int32_t val) {
    uint8_t *p = (uint8_t *)&val;
    for (uint8_t i = 0; i < 4; i++) {
        i2c_start();
        i2c_write(DS1307_ADDRESS);
        i2c_write(addr + i);
        i2c_write(p[i]);
        i2c_stop();
    }
    i2c_start();
    i2c_write(DS1307_ADDRESS);
    i2c_write(addr + 4);
    i2c_write(SIGNATURE);
    i2c_stop();
}

int32_t rtc_read_eeprom32(uint8_t addr, int32_t default_val) {
    uint8_t data[4];
    int32_t val;
    uint8_t signature;

    for (uint8_t i = 0; i < 4; i++) {
        i2c_start();
        i2c_write(DS1307_ADDRESS);
        i2c_write(addr + i);
        i2c_start();
        i2c_write(DS1307_ADDRESS | 1);
        data[i] = i2c_read(0);
        i2c_stop();
    }

    i2c_start();
    i2c_write(DS1307_ADDRESS);
    i2c_write(addr + 4);
    i2c_start();
    i2c_write(DS1307_ADDRESS | 1);
    signature = i2c_read(0);
    i2c_stop();

    if (signature == SIGNATURE) {
        val = *((int32_t *)data);
        return val;
    } else {
        return default_val;
    }
}