/*
 * serial.c
 *
 *  Created on: 12 abr. 2023
 *      Author: MQuero
 */

#include "serial.h"
#include "string.h"
#include "stdlib.h"

uint8_t sbuf[100];

HAL_StatusTypeDef outIntSerial(int32_t out) {
	char msg[10];
	HAL_StatusTypeDef ret;

	itoa(out, msg, 10); //int to char
	ret = HAL_UART_Transmit(&huart6, (uint8_t*) msg, strlen(msg),10);
	return ret;
}

uint32_t inIntSerial(void) {
	uint8_t dataR[1] = "";
	uint8_t buf[10] = "";
	int i = 0;

	while (dataR[0] != (uint8_t) '\r') { //0x0d
		if (!HAL_UART_Receive(&huart6, dataR, 1, 10)) {
			HAL_UART_Transmit(&huart6, dataR, 1, 10);
			buf[i] = dataR[0];
			i += 1;
		}
	}
	return atoi((char*) buf); //char to int
}

HAL_StatusTypeDef outStrSerial(uint8_t str[100]) {
	HAL_StatusTypeDef ret;
	uint8_t dataR[1] = "";
	int i = 0;

	do{
		dataR[0] = str[i];
		ret = HAL_UART_Transmit(&huart6, dataR, 1, 10);
		i += 1;
	} while(dataR[0] != (uint8_t) '\0' );

	for(uint16_t i = 0; i < sizeof(sbuf); i++){
		sbuf[i] = 0;
	}

	return ret;
}

HAL_StatusTypeDef inStrSerial(void) {
	uint8_t dataR[1] = "";
	HAL_StatusTypeDef ret;
	int i = 0;

	while (dataR[0] != (uint8_t) '\r') { //0x0d
		if (!HAL_UART_Receive(&huart6, dataR, 1, 10)) {
			ret = HAL_UART_Transmit(&huart6, dataR, 1, 10);
			sbuf[i] = dataR[0];
			if(ret) return ret;
			i += 1;
		}
	}
	return ret;
}
