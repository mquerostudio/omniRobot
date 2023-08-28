/*
 * AS5600.h
 *
 *  Created on: 12 abr. 2023
 *      Author: MQuero
 */

#ifndef AS5600_AS5600_H_
#define AS5600_AS5600_H_

#include "stm32f4xx_hal.h"

#define AS5600_ADRR (0x36<<1)
#define AS5600_STATUS 0x0B
#define AS5600_RAWANGLE 0x0C

#define ENCODERUNOI2C &hi2c1
#define ENCODERDOSI2C &hi2c2;
#define ENCODERTRESI2C &hi2c3;

#define ENCODERRESOLUTION 0.087890625f

extern I2C_HandleTypeDef hi2c1;
extern I2C_HandleTypeDef hi2c2;
extern I2C_HandleTypeDef hi2c3;

typedef struct {
	I2C_HandleTypeDef *i2c;
	uint16_t address;
	uint8_t statusReg;
	uint8_t rawAngleReg;
	uint16_t rawAngle;
	float decAngle;
	float angularVelUno;
} Encoder_HandleTypeDef;

void initEncoder(Encoder_HandleTypeDef *encoder, I2C_HandleTypeDef *i2c);
void readRegister_AS5600(Encoder_HandleTypeDef *encoder, uint8_t reg,
		uint8_t len);
void readDecAngle_AS5600(Encoder_HandleTypeDef *encoder);
void waitMagnet_AS5600(Encoder_HandleTypeDef *encoder);

#endif /* AS5600_AS5600_H_ */
