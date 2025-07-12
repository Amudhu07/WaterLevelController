#ifndef RTC_DS1307_H
#define RTC_DS1307_H

#include <stdint.h>

void rtc_init(void);
void rtc_set_time(uint8_t hour, uint8_t min, uint8_t sec);
void rtc_get_time(uint8_t *hour, uint8_t *min, uint8_t *sec);
void rtc_write_eeprom32(uint8_t addr, int32_t val);
int32_t rtc_read_eeprom32(uint8_t addr, int32_t default_val);

#endif