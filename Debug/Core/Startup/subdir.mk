################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32f411vetx.s 

OBJS += \
./Core/Startup/startup_stm32f411vetx.o 

S_DEPS += \
./Core/Startup/startup_stm32f411vetx.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/%.o: ../Core/Startup/%.s Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Motor" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/AS5600" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Serial" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD/UGUI/Fonts" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD/UGUI" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD/LCD" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V LCD" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Startup

clean-Core-2f-Startup:
	-$(RM) ./Core/Startup/startup_stm32f411vetx.d ./Core/Startup/startup_stm32f411vetx.o

.PHONY: clean-Core-2f-Startup

