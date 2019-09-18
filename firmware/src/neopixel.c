
#include "neopixel.h"
#include "config/FFT/peripheral/tmr/plib_tmr2.h"
#include "config/FFT/peripheral/tmr/plib_tmr3.h"
#include "config/FFT/peripheral/ocmp/plib_ocmp2.h"
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
bool disableNEOUpdate           = false;
bool neopixelDisabled           = false;
bool resetTriggered             = false;
uint16_t periodCounter           = 0;
uint16_t neoContext             = 1;
uint8_t pixelCounter            = 0;
uint32_t bitCounter             = 0x800000;
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
    OCMP2_Disable();
    
    //Set interrupt callbacks
    TMR2_CallbackRegister((void *)TMR2InterruptCallback, neoContext);
    //OCMP2_CallbackRegister(OCInterruptCallback, neoContext);
    
    //Start modules TMR and OC
    OCMP2_Enable();    
    TMR2_Start();    
    
    //16-bit set (0-120)
    OCMP2_CompareSecondaryValueSet(60);
    
}

void setLEDColor(uint8_t n, uint8_t R, uint8_t G, uint8_t B)
{
    pixelData[n-1] = 0x00000000 | ((uint32_t)(G&0xFF)<<16) | ((uint32_t)(R&0xFF)<<8) | ((B&0xFF));
}

void updateNeoData(void)
{
    disableNEOUpdate = false;
    neopixelDisabled = false;
    TMR2_InterruptEnable();
    //Start clocking stuff
    //OCMP2_Enable();
//    TMR2_Start();    
}

void neopixelHaltUpdate(void)
{
    //Stop clocking
//    TMR2_Stop();
//    OCMP2_Disable();
    
    
    //Reset tracking variables
    periodCounter   = 0;
    resetTriggered  = false;
    disableNEOUpdate= true;
}

void neopixelReset(void)
{
    //Start the counter to count up to reset time value (67)
    periodCounter   = 0;
    resetTriggered  = true;
    //Set to be always low
    OCMP2_CompareSecondaryValueSet(0);
}

void OCInterruptCallback(uintptr_t context)
{

}

void TMR2InterruptCallback(uint32_t status, uintptr_t context)
{
    //__builtin_disable_interrupts();
    //LED4_Set();
    if(disableNEOUpdate)
    {
            OC2RS = 0;
            TMR2_InterruptDisable();
            //TMR3_Start();
    }
    else
    { 
        //There is a 1 in the next bit to clock
        if(pixelData[pixelCounter] & bitCounter)
        {            
            OC2RS = BIT_TIME_HIGH;
        }
        //There is a 0 in the next bit to clock
        else
        {            
            OC2RS = BIT_TIME_LOW;
        }

        //Move to next bit
        bitCounter >>= 1;
        //If the bit counter has moved through all bits
        if(bitCounter == 0)
        {
            //Reset bit location
            bitCounter = 0x800000;

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
    //LED4_Clear();
    //__builtin_enable_interrupts();
}


