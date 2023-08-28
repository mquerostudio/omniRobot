################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/LCD\ ST7789V/ST7789V.c \
../Drivers/LCD\ ST7789V/fonts.c 

OBJS += \
./Drivers/LCD\ ST7789V/ST7789V.o \
./Drivers/LCD\ ST7789V/fonts.o 

C_DEPS += \
./Drivers/LCD\ ST7789V/ST7789V.d \
./Drivers/LCD\ ST7789V/fonts.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/LCD\ ST7789V/ST7789V.o: ../Drivers/LCD\ ST7789V/ST7789V.c Drivers/LCD\ ST7789V/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Motor" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/AS5600" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Serial" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/LCD" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/UGUI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/LCD ST7789V/ST7789V.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/LCD\ ST7789V/fonts.o: ../Drivers/LCD\ ST7789V/fonts.c Drivers/LCD\ ST7789V/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Motor" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/AS5600" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Serial" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/LCD" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/UGUI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/LCD ST7789V/fonts.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-LCD-20-ST7789V

clean-Drivers-2f-LCD-20-ST7789V:
	-$(RM) ./Drivers/LCD\ ST7789V/ST7789V.cyclo ./Drivers/LCD\ ST7789V/ST7789V.d ./Drivers/LCD\ ST7789V/ST7789V.o ./Drivers/LCD\ ST7789V/ST7789V.su ./Drivers/LCD\ ST7789V/fonts.cyclo ./Drivers/LCD\ ST7789V/fonts.d ./Drivers/LCD\ ST7789V/fonts.o ./Drivers/LCD\ ST7789V/fonts.su

.PHONY: clean-Drivers-2f-LCD-20-ST7789V

