#include <xc.h>
#include "lcd.h"
#include "adc.h"
#include "eeprom_utils.h"

#define ADDR_HIGH_VOLT  0x10
#define ADDR_LOW_VOLT   0x14
#define ADDR_TRIP_CURR  0x18

void menu_config(void) {
    uint8_t key = 0;
    uint8_t option = 0;
    uint8_t editing = 1;

    int high_voltage = read_eeprom(ADDR_HIGH_VOLT);
    int low_voltage = read_eeprom(ADDR_LOW_VOLT);
    int trip_current = read_eeprom(ADDR_TRIP_CURR);

    lcd_clear();
    lcd_puts("Menu: 1.HV 2.LV 3.I");

    while (editing) {
        // simulate key = 1, 2, 3 to change settings
        if (option == 0) {
            lcd_gotoxy(1, 2);
            lcd_puts("1:HV ");
            lcd_putc(high_voltage / 100 + '0');
        } else if (option == 1) {
            lcd_gotoxy(1, 2);
            lcd_puts("2:LV ");
            lcd_putc(low_voltage / 100 + '0');
        } else if (option == 2) {
            lcd_gotoxy(1, 2);
            lcd_puts("3:I  ");
            lcd_putc(trip_current / 100 + '0');
        }

        // This would be replaced with button logic
        editing = 0; // break after first run for now
    }

    write_eeprom(ADDR_HIGH_VOLT, high_voltage);
    write_eeprom(ADDR_LOW_VOLT, low_voltage);
    write_eeprom(ADDR_TRIP_CURR, trip_current);
}