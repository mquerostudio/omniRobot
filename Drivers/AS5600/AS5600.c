/*
 * AS5600.c
 *
 *  Created on: 12 abr. 2023
 *      Author: MQuero
 */

#include "AS5600.h"
#include "stdlib.h"
#include "serial.h"

uint8_t pBuf[2];

void initEncoder(Encoder_HandleTypeDef *encoder, I2C_HandleTypeDef *i2c) {
	encoder->i2c = i2c;
	encoder->address = AS5600_ADRR;
	encoder->statusReg = AS5600_STATUS;
	encoder->rawAngleReg = AS5600_RAWANGLE;
}

void readRegister_AS5600(Encoder_HandleTypeDef *encoder, uint8_t reg,
		uint8_t len) {
	pBuf[0] = reg;

	HAL_I2C_Master_Transmit(encoder->i2c, encoder->address, pBuf, (uint16_t) 1,
			(uint32_t) 50);

	HAL_I2C_Master_Receive(encoder->i2c, encoder->address, pBuf, len, 50);
}

void readDecAngle_AS5600(Encoder_HandleTypeDef *encoder) {
	uint16_t data;

	readRegister_AS5600(encoder, encoder->rawAngleReg, 2);

	data = pBuf[1] | (pBuf[0] << 8);

	encoder->rawAngle = data;
	encoder->decAngle = data * ENCODERRESOLUTION;
}

void waitMagnet_AS5600(Encoder_HandleTypeDef *encoder) {
	do {
		readRegister_AS5600(encoder, encoder->statusReg, 1);

	} while (((pBuf[0] & 0x38) >> 3) != 4);
}
