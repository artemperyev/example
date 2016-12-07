/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/


#include "stm32l4xx.h"
#include "stm32l476g_discovery.h"
			

#define JOY_CENTER_PORT            	GPIOA
#define JOY_CENTER_PIN             	GPIO_PIN_0
#define JOY_PORT_CLK		        __HAL_RCC_GPIOA_CLK_ENABLE()

#define LED_RED_PORT            	GPIOB
#define LED_RED_PIN             	GPIO_PIN_2
#define LED_RED_PORT_CLK			__HAL_RCC_GPIOB_CLK_ENABLE()

#define LED_GREEN_PORT            	GPIOE
#define LED_GREEN_PIN             	GPIO_PIN_8
#define LED_GREEN_PORT_CLK			__HAL_RCC_GPIOE_CLK_ENABLE()


#define ON            				1
#define OFF            				0


uint8_t joy_center_pressed = 0;


void gpio_init(void)
{
	JOY_PORT_CLK;
	LED_RED_PORT_CLK;
	LED_GREEN_PORT_CLK;

	GPIO_InitTypeDef GPIO_InitStruct;


	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pin = LED_RED_PIN;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
	HAL_GPIO_Init(LED_RED_PORT, &GPIO_InitStruct);


	GPIO_InitStruct.Pin = LED_GREEN_PIN;
	HAL_GPIO_Init(LED_GREEN_PORT, &GPIO_InitStruct);


	GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	GPIO_InitStruct.Pin = JOY_CENTER_PIN;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
	HAL_GPIO_Init(JOY_CENTER_PORT, &GPIO_InitStruct);
}


void led_red(uint8_t on_off)
{
	if (!on_off)
	{
		HAL_GPIO_WritePin(LED_RED_PORT, LED_RED_PIN, GPIO_PIN_RESET);
	} else {
		HAL_GPIO_WritePin(LED_RED_PORT, LED_RED_PIN, GPIO_PIN_SET);
	}
}


void led_green(uint8_t on_off)
{
	if (!on_off)
	{
		HAL_GPIO_WritePin(LED_GREEN_PORT, LED_GREEN_PIN, GPIO_PIN_RESET);
	} else {
		HAL_GPIO_WritePin(LED_GREEN_PORT, LED_GREEN_PIN, GPIO_PIN_SET);
	}
}


int main(void)
{
	gpio_init();

	while(1)
	{

		if (HAL_GPIO_ReadPin(JOY_CENTER_PORT, JOY_CENTER_PIN)) {

			joy_center_pressed ^= 1;
		}

		switch (joy_center_pressed)
		{
			case ON:
			{
				led_red(ON);
				break;
			}
			case OFF:
			{
				led_red(OFF);
				break;
			}
		}

	}
}
