################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ST7789V\ LCD/LCD/images.c \
../Drivers/ST7789V\ LCD/LCD/lcd.c 

OBJS += \
./Drivers/ST7789V\ LCD/LCD/images.o \
./Drivers/ST7789V\ LCD/LCD/lcd.o 

C_DEPS += \
./Drivers/ST7789V\ LCD/LCD/images.d \
./Drivers/ST7789V\ LCD/LCD/lcd.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ST7789V\ LCD/LCD/images.o: ../Drivers/ST7789V\ LCD/LCD/images.c Drivers/ST7789V\ LCD/LCD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Motor" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/AS5600" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Serial" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD/UGUI/Fonts" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD/UGUI" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD/LCD" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/ST7789V LCD/LCD/images.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/ST7789V\ LCD/LCD/lcd.o: ../Drivers/ST7789V\ LCD/LCD/lcd.c Drivers/ST7789V\ LCD/LCD/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Motor" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/AS5600" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Serial" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD/UGUI/Fonts" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD/UGUI" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD/LCD" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD" -O0 -ffunction-sections -fdata-sections -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/ST7789V LCD/LCD/lcd.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ST7789V-20-LCD-2f-LCD

clean-Drivers-2f-ST7789V-20-LCD-2f-LCD:
	-$(RM) ./Drivers/ST7789V\ LCD/LCD/images.cyclo ./Drivers/ST7789V\ LCD/LCD/images.d ./Drivers/ST7789V\ LCD/LCD/images.o ./Drivers/ST7789V\ LCD/LCD/images.su ./Drivers/ST7789V\ LCD/LCD/lcd.cyclo ./Drivers/ST7789V\ LCD/LCD/lcd.d ./Drivers/ST7789V\ LCD/LCD/lcd.o ./Drivers/ST7789V\ LCD/LCD/lcd.su

.PHONY: clean-Drivers-2f-ST7789V-20-LCD-2f-LCD

