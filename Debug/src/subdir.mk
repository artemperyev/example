################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/stm32l4xx_it.c \
../src/syscalls.c \
../src/system_stm32l4xx.c 

OBJS += \
./src/main.o \
./src/stm32l4xx_it.o \
./src/syscalls.o \
./src/system_stm32l4xx.o 

C_DEPS += \
./src/main.d \
./src/stm32l4xx_it.d \
./src/syscalls.d \
./src/system_stm32l4xx.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32L476VGTx -DSTM32L4 -DSTM32L476G_DISCO -DSTM32 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib" -I"D:/work/projects/eclipse_projects/example/inc" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/CMSIS/core" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/CMSIS/device" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/HAL_Driver/Inc/Legacy" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/HAL_Driver/Inc" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/Components/Common" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/Components/cs43l22" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/Components/hx8347g" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/Components/l3gd20" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/Components/lsm303c" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/Components/lsm303dlhc" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/Components/mfxstm32l152" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/Components/n25q128a" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/Components/n25q256a" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/Components/st7735" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/Components/stmpe1600" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/Components/stmpe811" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/Components/wm8994" -I"D:/work/projects/eclipse_projects/stm32l476g-disco_hal_lib/Utilities/STM32L476G-Discovery" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


