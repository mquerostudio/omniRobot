/*
 * serial.h
 *
 *  Created on: 12 abr. 2023
 *      Author: MQuero
 */

#ifndef SERIAL_SERIAL_H_
#define SERIAL_SERIAL_H_

#include "stm32f4xx_hal.h"

//extern UART_HandleTypeDef huart6;

HAL_StatusTypeDef outIntSerial(int32_t out);
uint32_t inIntSerial(void);
HAL_StatusTypeDef outStrSerial(uint8_t str[100]);
HAL_StatusTypeDef inStrSerial(void);


#endif /* SERIAL_SERIAL_H_ */
