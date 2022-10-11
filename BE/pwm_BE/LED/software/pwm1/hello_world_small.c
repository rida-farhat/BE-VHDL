#include "sys/alt_stdio.h"
#include "system.h"
#include "unistd.h"

#define leds (unsigned int *) LED_BASE
#define BUTTONS (unsigned int *) BP_BASE
//unsigned char a;

//For pwm
#define freq (volatile int *) PWM_0_BASE
#define duty (volatile int *) (PWM_0_BASE+4)
#define control (volatile int *) (PWM_0_BASE+8)

unsigned int a,b,c,d;





int main()
{ 
  alt_putstr("Hello Safae!\n");
  *leds = 0;
  *freq = 1024;
  *duty = 512;
  *control =3 ;

  b=*freq;
  c=*duty;
  d=*control;

  printf("freq = %d \n",b);
  printf("freq2 = %d \n",freq);
  printf("duty = %d \n",c);
  printf("duty2 = %d \n",duty);
  printf("control = %d \n",d);




  /* Event loop never exits. */
  while (1)
  {
	 // alt_putstr("bien dans while \n");

	  //a=(*BUTTONS & 3);


	/* if(a==1)
	  {
		 *leds=255;
	  }
	 else if(a==2)
	  {

		 *leds=0;
	  }
	 else
	 {
		 *leds=*leds+1;
		 usleep(100000);
	 }*/




	 printf("freq=%d \n",b);

	 *leds=255;
	 *freq=1024;
  }


  return 0;
}
