#ifndef I2C_H
#define I2C_H

#include <xc.h>
#include <stdint.h>

#define I2C_SCL  LATCbits.LATC3
#define I2C_SDA  LATCbits.LATC4
#define I2C_SCL_TRIS  TRISCbits.TRISC3
#define I2C_SDA_TRIS  TRISCbits.TRISC4

void i2c_init(void);
void i2c_start(void);
void i2c_stop(void);
void i2c_write(uint8_t data);
uint8_t i2c_read(uint8_t ack);

#endif