/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"

//#define bp (unsigned int *) BP_BASE;
#define led (unsigned int *) LED_BASE
//int a;
void delay(int a){
	volatile int i = 0;
	while (i<a*10000){
		i++;
	}
}

int main()
{
//  *bp = 0x0400;
//	a = bp(0);

	int cnt = 0;
	printf(" from Nios II! \n");
	printf(" test test test \n");

	while(1) {
		IOWR_ALTERA_AVALON_PIO_DATA(led(1), cnt&0xff);
		delay(20);
		cnt++;
	}


  return 0;
}

/* IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE, 0);
 IOWR_ALTERA_AVALON_PIO_DATA(BP_BASE, 0);


 if(BP_BASE(0) == 1)
	  IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE, 0);


 if (BP_BASE(1) == 0) {
	  IOWR_ALTERA_AVALON_PIO_DATA(LED_BASE, 0);
 }
*/
