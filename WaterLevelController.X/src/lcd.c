#include <xc.h>
#include <string.h>
#include "lcd.h"
#define _XTAL_FREQ 8000000  // or whatever your crystal frequency is

#define LCD_RS LATBbits.LATB1
#define LCD_E  LATBbits.LATB0
#define LCD_DB4 LATBbits.LATB5
#define LCD_DB5 LATBbits.LATB4
#define LCD_DB6 LATBbits.LATB3
#define LCD_DB7 LATBbits.LATB2

#define TRIS_RS TRISBbits.TRISB1
#define TRIS_E  TRISBbits.TRISB0
#define TRIS_DB4 TRISBbits.TRISB5
#define TRIS_DB5 TRISBbits.TRISB4
#define TRIS_DB6 TRISBbits.TRISB3
#define TRIS_DB7 TRISBbits.TRISB2

void lcd_delay_us(unsigned int us) {
    while(us--) __delay_us(1);
}

void lcd_delay_ms(unsigned int ms) {
    while(ms--) __delay_ms(1);
}

void lcd_send_nibble(unsigned char nibble) {
    LCD_DB4 = (nibble >> 0) & 1;
    LCD_DB5 = (nibble >> 1) & 1;
    LCD_DB6 = (nibble >> 2) & 1;
    LCD_DB7 = (nibble >> 3) & 1;

    LCD_E = 1;
    lcd_delay_us(5);
    LCD_E = 0;
    lcd_delay_us(5);
}

void lcd_send_byte(unsigned char isData, unsigned char byte) {
    LCD_RS = isData;
    lcd_send_nibble(byte >> 4);
    lcd_send_nibble(byte & 0x0F);
    lcd_delay_us(60);
}

void lcd_init(void) {
    TRIS_RS = 0; TRIS_E = 0;
    TRIS_DB4 = 0; TRIS_DB5 = 0;
    TRIS_DB6 = 0; TRIS_DB7 = 0;

    LCD_RS = 0; LCD_E = 0;
    lcd_delay_ms(50);

    for (char i = 0; i < 3; i++) {
        lcd_send_nibble(0x03);
        lcd_delay_ms(5);
    }

    lcd_send_nibble(0x02);
    lcd_send_byte(0, 0x28);
    lcd_send_byte(0, 0x0C);
    lcd_send_byte(0, 0x01);
    lcd_delay_ms(2);
    lcd_send_byte(0, 0x06);
}

void lcd_putc(char c) {
    if (c == '\f') {
        lcd_send_byte(0, 0x01);
        lcd_delay_ms(2);
    } else {
        lcd_send_byte(1, c);
    }
}

void lcd_puts(const char *str) {
    while (*str) {
        lcd_putc(*str++);
    }
}

void lcd_gotoxy(unsigned char x, unsigned char y) {
    unsigned char addr[] = {0x00, 0x40, 0x14, 0x54};
    lcd_send_byte(0, 0x80 | (addr[y - 1] + x - 1));
}

void lcd_clear(void) {
    lcd_putc('\f');
}