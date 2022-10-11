
#include "sys/alt_stdio.h"
#include <stdio.h>
#include "system.h"
//#include "altera_avalon_pio_regs.h"
#include <stdio.h>
#include "unistd.h"

#define freq (volatile int*) OUT_PWM_BASE


int main()
{ 
  alt_putstr("Hello from Nios II!\n");

  /* Event loop never exits. */
  while (1);

  return 0;
}
