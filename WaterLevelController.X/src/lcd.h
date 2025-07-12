#ifndef LCD_H
#define LCD_H
#include <stdio.h>
void lcd_init(void);
void lcd_putc(char c);
void lcd_puts(const char *str);
void lcd_gotoxy(unsigned char x, unsigned char y);
void lcd_clear(void);

#endif