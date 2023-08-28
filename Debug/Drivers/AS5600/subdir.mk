################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/AS5600/AS5600.c 

OBJS += \
./Drivers/AS5600/AS5600.o 

C_DEPS += \
./Drivers/AS5600/AS5600.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/AS5600/%.o Drivers/AS5600/%.su Drivers/AS5600/%.cyclo: ../Drivers/AS5600/%.c Drivers/AS5600/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Motor" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/AS5600" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Serial" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD/UGUI/Fonts" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD/UGUI" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD/LCD" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-AS5600

clean-Drivers-2f-AS5600:
	-$(RM) ./Drivers/AS5600/AS5600.cyclo ./Drivers/AS5600/AS5600.d ./Drivers/AS5600/AS5600.o ./Drivers/AS5600/AS5600.su

.PHONY: clean-Drivers-2f-AS5600

