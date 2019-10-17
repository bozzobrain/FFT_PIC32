
#include "neopixel.h"
#include "FFT.h"
#include "config/FFT/peripheral/tmr/plib_tmr2.h"
#include "config/FFT/peripheral/tmr/plib_tmr3.h"
#include "config/FFT/peripheral/ocmp/plib_ocmp2.h"
#include "config/FFT/peripheral/ocmp/plib_ocmp3.h"
#include "config/FFT/peripheral/ocmp/plib_ocmp4.h"
#include "config/FFT/peripheral/ocmp/plib_ocmp6.h"
#include "config/FFT/peripheral/gpio/plib_gpio.h"
/* 
 * TIMING
   * Time high 0      - 300   ns  (30)
   * Time low 0       - 900   ns  (90)
   * Time High 1      - 600   ns  (60)
   * Time Low 1       - 600   ns  (60)
   * Time Reset       - 80    us  
   * 
   * Bit period       = 1.2   us (4 PWM periods)
   * PWM period       = 1200  ns (120 counts)
   * PWM count        = 10    ns
   * Reset bit count  = 67    bit periods
   * 
 * 
 * DATA STRUCTURE - 24 bit
 * G7 G6 G5 G4 G3 G2 G1 G0 R7 R6 R5 R4 R3 R2 R1 R0 B7 B6 B5 B4 B3 B2 B1 B0
 * 
 * 
 * 
   */

#define RESET_PERIOD            500
#define T0H                     30
#define T0L                     90
#define T1H                     60
#define T1L                     60
#define BIT_TIME_HIGH           T1H
#define BIT_TIME_LOW            T0H

#define LEDSTRIP1               OC2RS
#define LEDSTRIP2               OC3RS
#define LEDSTRIP3               OC4RS
#define LEDSTRIP4               OC6RS

bool disableNEOUpdate           = false;
volatile bool neopixelDisabled  = true;
bool resetTriggered             = false;
uint16_t periodCounter          = 0;
uint16_t neoContext             = 1;
uint16_t pixelCounter            = 0;
uint32_t bitMask                = 0x800000;

volatile uint32_t pixelData[NUMBER_LEDS];

void neopixelReset(void);
void OCInterruptCallback(uintptr_t context);
void TMR2InterruptCallback(uint32_t status, uintptr_t context);

void setupNeopixel(void)
{
    //For testing setup some data to transmit
    int i = 0;
    for(i = 0; i < NUMBER_LEDS; i++)
        pixelData[i] = 0x000000;
    
    
    //Stop modules TMR and OC
    TMR2_Stop();
    TMR3_Stop();
    //OCMP2_Disable();
    
    //Set interrupt callbacks
    TMR2_CallbackRegister((void *)TMR2InterruptCallback, neoContext);
    //OCMP2_CallbackRegister(OCInterruptCallback, neoContext);
    
    //Start modules TMR and OC
    OCMP2_Enable();  
    OCMP3_Enable();
    OCMP4_Enable();
    OCMP6_Enable();
    //TMR2_Start();    
    //16-bit set (0-120)    
    LEDSTRIP1 = 60;
    LEDSTRIP2 = 60;
    LEDSTRIP3 = 60;
    LEDSTRIP4 = 60;
    
    neopixelDisabled = true;
    disableNEOUpdate = true;
}

void setLEDColor(uint16_t n, uint8_t R, uint8_t G, uint8_t B)
{
    pixelData[n-1] = 0x00000000 | ((uint32_t)(G)<<16) | ((uint32_t)(R)<<8) | ((B));
}

void updateNeoData(void)
{
    disableNEOUpdate = false;
    neopixelDisabled = false;
    //TMR2_InterruptEnable();
    TMR2_Start();    
}

bool getUpdateStatus(void)
{
    return disableNEOUpdate;
}
bool getNeopixelDisabled(void)
{
    return neopixelDisabled;
}

void testNEO(void)
{
    static uint8_t red = 255;
    red++;
    if(red > 255)
        red = 0;

    int i=0;
    for (i=1;i<=NUMBER_LEDS;i++)
    {
        setLEDColor(i,red,0,0);
    }

    updateNeoData();
    while(!neopixelDisabled);
    TMR3_Start();
}

void TMR2InterruptCallback(uint32_t status, uintptr_t context)
{
    LED3_Toggle();
   
    if(disableNEOUpdate )//&& (LEDSTRIP1 != 0))
    {
        LEDSTRIP1 = 0;
        LEDSTRIP2 = 0;
        LEDSTRIP3 = 0;
        LEDSTRIP4 = 0;
        TMR2_Stop(); 
        //TMR3_Start();
        //setFFTUpdate(false);
        neopixelDisabled=true;
    }
    else
    { 
        //There is a 1 in the next bit to clock
        if(pixelData[pixelCounter] & bitMask)
        {            
            LEDSTRIP1 = BIT_TIME_HIGH;
            LEDSTRIP2 = BIT_TIME_HIGH;
            LEDSTRIP3 = BIT_TIME_HIGH;
            LEDSTRIP4 = BIT_TIME_HIGH;
        }
        //There is a 0 in the next bit to clock
        else
        {     
            LEDSTRIP1 = BIT_TIME_LOW;
            LEDSTRIP2 = BIT_TIME_LOW;
            LEDSTRIP3 = BIT_TIME_LOW;
            LEDSTRIP4 = BIT_TIME_LOW;
        }

        //Move to next bit
        bitMask >>= 1;
        //If the bit counter has moved through all bits
        if(bitMask == 0)
        {
            //Reset bit location
            bitMask = 0x800000;

            //Increment to next LED pixel
            //pixelCounter++;

            //If all pixels have been handled
            if(pixelCounter++ >= NUMBER_LEDS)
            {
                //return to first pixel
                pixelCounter = 0;

                //initiate a stop condition the next time thru
                disableNEOUpdate = true;
            }
        }
    }
}


