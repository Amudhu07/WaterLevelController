#include "i2c.h"

#define _XTAL_FREQ 8000000

void i2c_delay(void) {
    __delay_us(5);
}

void i2c_init(void) {
    I2C_SCL_TRIS = 0;
    I2C_SDA_TRIS = 0;
    I2C_SCL = 1;
    I2C_SDA = 1;
}

void i2c_start(void) {
    I2C_SDA = 1;
    I2C_SCL = 1;
    i2c_delay();
    I2C_SDA = 0;
    i2c_delay();
    I2C_SCL = 0;
}

void i2c_stop(void) {
    I2C_SDA = 0;
    I2C_SCL = 1;
    i2c_delay();
    I2C_SDA = 1;
    i2c_delay();
}

void i2c_write(uint8_t data) {
    for (uint8_t i = 0; i < 8; i++) {
        I2C_SDA = (data & 0x80) ? 1 : 0;
        data <<= 1;
        i2c_delay();
        I2C_SCL = 1;
        i2c_delay();
        I2C_SCL = 0;
    }

    // Acknowledge bit
    I2C_SDA_TRIS = 1; // input
    i2c_delay();
    I2C_SCL = 1;
    i2c_delay();
    I2C_SCL = 0;
    I2C_SDA_TRIS = 0; // output
}

uint8_t i2c_read(uint8_t ack) {
    uint8_t data = 0;

    I2C_SDA_TRIS = 1; // input

    for (uint8_t i = 0; i < 8; i++) {
        I2C_SCL = 1;
        i2c_delay();
        data = (data << 1) | (PORTCbits.RC4 & 0x01);
        I2C_SCL = 0;
        i2c_delay();
    }

    I2C_SDA_TRIS = 0; // output
    I2C_SDA = (ack) ? 0 : 1;
    i2c_delay();
    I2C_SCL = 1;
    i2c_delay();
    I2C_SCL = 0;
    I2C_SDA = 1;

    return data;
}