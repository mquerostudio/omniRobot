/*
 * cinematic.h
 *
 *  Created on: 4 may. 2023
 *      Author: MQuero.
 */

#ifndef INC_CINEMATIC_H_
#define INC_CINEMATIC_H_

extern MOTOR_HandleTypeDef motorUno;
extern MOTOR_HandleTypeDef motorDos;
extern MOTOR_HandleTypeDef motorTres;

void moveRobot(float vel, float velangle, int w);

#endif /* INC_CINEMATIC_H_ */
