/*
 * motor.c
 *
 *  Created on: Apr 9, 2023
 *      Author: MQuero
 */

#include "motor.h"

void initMotor(MOTOR_HandleTypeDef *motor, TIM_HandleTypeDef *tim,
		uint32_t channel, uint16_t enablePin, uint16_t dirPin, uint32_t step,
		uint32_t maxFreq) {

	motor->Motor = tim;
	motor->Channel = channel;
	motor->enablePin = enablePin;
	motor->dirPin = dirPin;
	motor->Step = step;
	motor->MaxFreq = maxFreq;

	endisMotor(motor, DISABLE_MOTOR);
	changeDirMotor(motor, CW);
	HAL_TIM_PWM_Start(motor->Motor, motor->Channel); //Init PWM signal
}

void endisMotor(MOTOR_HandleTypeDef *motor, enable_Motor State) {
	motor->State = State;
	HAL_GPIO_WritePin(GPIOD, motor->enablePin, motor->State);
}

void changeDirMotor(MOTOR_HandleTypeDef *motor, dir_Motor dir) {
	motor->dir = dir;
	HAL_GPIO_WritePin(GPIOD, motor->dirPin, dir);
}

void velMotor(MOTOR_HandleTypeDef *motor, int32_t vel) {
	uint32_t ARRreg, fstep;

	if (vel < 0) {
		vel = vel * (-1);
		changeDirMotor(motor, CCW);
	} else {
		changeDirMotor(motor, CW);
	}

	motor->desiredVel = vel;

	if (vel != 0) {
		fstep = (vel * 360 * motor->Step) / (60 * 1.8);
		if (fstep > motor->MaxFreq)
			fstep = motor->MaxFreq;

		//min fstep = 106 Hz --> 1 rpm
		ARRreg = (CLOCKFREQ / (fstep * (motor->Motor->Instance->PSC + 1))) - 1;
		motor->Motor->Instance->ARR = ARRreg;
		motor->Motor->Instance->CCR1 = (motor->Motor->Instance->ARR) / 2;
		if (motor->State == DISABLE_MOTOR)
			endisMotor(motor, ENABLE_MOTOR);
	} else{
		endisMotor(motor, DISABLE_MOTOR);
	}
}
