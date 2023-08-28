################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/ST7789V\ BIS/UGUI/ugui.c \
../Drivers/ST7789V\ BIS/UGUI/ugui_button.c \
../Drivers/ST7789V\ BIS/UGUI/ugui_checkbox.c \
../Drivers/ST7789V\ BIS/UGUI/ugui_image.c \
../Drivers/ST7789V\ BIS/UGUI/ugui_progress.c \
../Drivers/ST7789V\ BIS/UGUI/ugui_sim.c \
../Drivers/ST7789V\ BIS/UGUI/ugui_textbox.c 

OBJS += \
./Drivers/ST7789V\ BIS/UGUI/ugui.o \
./Drivers/ST7789V\ BIS/UGUI/ugui_button.o \
./Drivers/ST7789V\ BIS/UGUI/ugui_checkbox.o \
./Drivers/ST7789V\ BIS/UGUI/ugui_image.o \
./Drivers/ST7789V\ BIS/UGUI/ugui_progress.o \
./Drivers/ST7789V\ BIS/UGUI/ugui_sim.o \
./Drivers/ST7789V\ BIS/UGUI/ugui_textbox.o 

C_DEPS += \
./Drivers/ST7789V\ BIS/UGUI/ugui.d \
./Drivers/ST7789V\ BIS/UGUI/ugui_button.d \
./Drivers/ST7789V\ BIS/UGUI/ugui_checkbox.d \
./Drivers/ST7789V\ BIS/UGUI/ugui_image.d \
./Drivers/ST7789V\ BIS/UGUI/ugui_progress.d \
./Drivers/ST7789V\ BIS/UGUI/ugui_sim.d \
./Drivers/ST7789V\ BIS/UGUI/ugui_textbox.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/ST7789V\ BIS/UGUI/ugui.o: ../Drivers/ST7789V\ BIS/UGUI/ugui.c Drivers/ST7789V\ BIS/UGUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Motor" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/AS5600" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Serial" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/LCD" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/UGUI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/ST7789V BIS/UGUI/ugui.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/ST7789V\ BIS/UGUI/ugui_button.o: ../Drivers/ST7789V\ BIS/UGUI/ugui_button.c Drivers/ST7789V\ BIS/UGUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Motor" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/AS5600" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Serial" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/LCD" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/UGUI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/ST7789V BIS/UGUI/ugui_button.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/ST7789V\ BIS/UGUI/ugui_checkbox.o: ../Drivers/ST7789V\ BIS/UGUI/ugui_checkbox.c Drivers/ST7789V\ BIS/UGUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Motor" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/AS5600" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Serial" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/LCD" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/UGUI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/ST7789V BIS/UGUI/ugui_checkbox.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/ST7789V\ BIS/UGUI/ugui_image.o: ../Drivers/ST7789V\ BIS/UGUI/ugui_image.c Drivers/ST7789V\ BIS/UGUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Motor" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/AS5600" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Serial" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/LCD" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/UGUI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/ST7789V BIS/UGUI/ugui_image.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/ST7789V\ BIS/UGUI/ugui_progress.o: ../Drivers/ST7789V\ BIS/UGUI/ugui_progress.c Drivers/ST7789V\ BIS/UGUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Motor" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/AS5600" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Serial" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/LCD" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/UGUI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/ST7789V BIS/UGUI/ugui_progress.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/ST7789V\ BIS/UGUI/ugui_sim.o: ../Drivers/ST7789V\ BIS/UGUI/ugui_sim.c Drivers/ST7789V\ BIS/UGUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Motor" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/AS5600" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Serial" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/LCD" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/UGUI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/ST7789V BIS/UGUI/ugui_sim.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/ST7789V\ BIS/UGUI/ugui_textbox.o: ../Drivers/ST7789V\ BIS/UGUI/ugui_textbox.c Drivers/ST7789V\ BIS/UGUI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Motor" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/AS5600" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/Serial" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/LCD" -I"D:/Dev/Embedded/Omni-Robot/Proyecto/Drivers/ST7789V BIS/UGUI" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/ST7789V BIS/UGUI/ugui_textbox.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-ST7789V-20-BIS-2f-UGUI

clean-Drivers-2f-ST7789V-20-BIS-2f-UGUI:
	-$(RM) ./Drivers/ST7789V\ BIS/UGUI/ugui.cyclo ./Drivers/ST7789V\ BIS/UGUI/ugui.d ./Drivers/ST7789V\ BIS/UGUI/ugui.o ./Drivers/ST7789V\ BIS/UGUI/ugui.su ./Drivers/ST7789V\ BIS/UGUI/ugui_button.cyclo ./Drivers/ST7789V\ BIS/UGUI/ugui_button.d ./Drivers/ST7789V\ BIS/UGUI/ugui_button.o ./Drivers/ST7789V\ BIS/UGUI/ugui_button.su ./Drivers/ST7789V\ BIS/UGUI/ugui_checkbox.cyclo ./Drivers/ST7789V\ BIS/UGUI/ugui_checkbox.d ./Drivers/ST7789V\ BIS/UGUI/ugui_checkbox.o ./Drivers/ST7789V\ BIS/UGUI/ugui_checkbox.su ./Drivers/ST7789V\ BIS/UGUI/ugui_image.cyclo ./Drivers/ST7789V\ BIS/UGUI/ugui_image.d ./Drivers/ST7789V\ BIS/UGUI/ugui_image.o ./Drivers/ST7789V\ BIS/UGUI/ugui_image.su ./Drivers/ST7789V\ BIS/UGUI/ugui_progress.cyclo ./Drivers/ST7789V\ BIS/UGUI/ugui_progress.d ./Drivers/ST7789V\ BIS/UGUI/ugui_progress.o ./Drivers/ST7789V\ BIS/UGUI/ugui_progress.su ./Drivers/ST7789V\ BIS/UGUI/ugui_sim.cyclo ./Drivers/ST7789V\ BIS/UGUI/ugui_sim.d ./Drivers/ST7789V\ BIS/UGUI/ugui_sim.o ./Drivers/ST7789V\ BIS/UGUI/ugui_sim.su ./Drivers/ST7789V\ BIS/UGUI/ugui_textbox.cyclo ./Drivers/ST7789V\ BIS/UGUI/ugui_textbox.d ./Drivers/ST7789V\ BIS/UGUI/ugui_textbox.o ./Drivers/ST7789V\ BIS/UGUI/ugui_textbox.su

.PHONY: clean-Drivers-2f-ST7789V-20-BIS-2f-UGUI

