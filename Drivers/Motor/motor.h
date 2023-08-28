/*
 * motor.h
 *
 *  Created on: Apr 9, 2023
 *      Author: MQuero.
 */

#ifndef MOTOR_MOTOR_H_
#define MOTOR_MOTOR_H_

#include "main.h"

#define CLOCKFREQ 100000000U

#define MOTOR1TIM &htim1
#define MOTOR2TIM &htim3
#define MOTOR3TIM &htim2

#define MOTOR1CHANNEL TIM_CHANNEL_1
#define MOTOR2CHANNEL TIM_CHANNEL_1
#define MOTOR3CHANNEL TIM_CHANNEL_2

#define MOTORSTEP 32U
#define MOTORMAXFREQ 100000U

typedef enum EnableMotor{
	ENABLE_MOTOR,
	DISABLE_MOTOR
}enable_Motor;

typedef enum DirectionMotor{
	CCW,
	CW
}dir_Motor;


typedef struct
{
	TIM_HandleTypeDef *Motor;
	uint32_t Channel;
	uint16_t enablePin;
	uint16_t dirPin;
	uint32_t Step;
	uint32_t MaxFreq;
	uint32_t desiredVel;
	dir_Motor dir;
	enable_Motor State; //1-> ON 0-> OFF

}MOTOR_HandleTypeDef;

void initMotor(MOTOR_HandleTypeDef *motor, TIM_HandleTypeDef *tim,
		uint32_t channel, uint16_t enablePin,  uint16_t dirPin, uint32_t step, uint32_t maxFreq);
void endisMotor(MOTOR_HandleTypeDef *motor, enable_Motor State);
void velMotor(MOTOR_HandleTypeDef *motor, int32_t vel); //rpm
void changeDirMotor(MOTOR_HandleTypeDef *motor, dir_Motor dir);

#endif /* MOTOR_MOTOR_H_ */
