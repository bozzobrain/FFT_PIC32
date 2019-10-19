#include <proc/p32mz2048efg100.h>

#include "ADCGather.h"
#include "config/FFT/peripheral/adchs/plib_adchs.h"
#include "config/FFT/peripheral/tmr/plib_tmr3.h"
#include "config/FFT/peripheral/gpio/plib_gpio.h"
#include "FFT.h"


volatile double vReal[SAMPLES];
volatile double vImag[SAMPLES];
volatile uint16_t channel11Input;
volatile uint16_t channel23Input;
volatile uint16_t channel24Input;
uint16_t sampleCounter = 0;

volatile double * getvReal(void)
{
    return vReal;
}
volatile double * getvImag(void)
{
    return vImag;
}

volatile double getvRealElem(uint16_t elem)
{
    return vReal[elem];
}
uint16_t getAnalog1(void)
{
    return channel23Input;
}
uint16_t getAnalog2(void)
{
    return channel24Input;
}
uint16_t getAnalog3(void)
{
    return channel11Input;
}

void startAlternateADCSample(void)
{
    //ADCHS_ChannelConversionStart(CHANNEL_2);
    ADCHS_GlobalEdgeConversionStart();
}

void TMR3_Interrupt_Callback(void)
{   
    if(ADCDSTAT1bits.ARDY11 == 1)
    {   
        channel11Input = ADCDATA11;
    }
    if(ADCDSTAT1bits.ARDY23 == 1)
    {   
        channel23Input = ADCDATA23;
    }
    if(ADCDSTAT1bits.ARDY24 == 1)
    {   
        channel24Input = ADCDATA24;
//        if(channel24Input >1024)
//        {
//            LED4_Toggle();
//        }
    }
    if(ADCHS_ChannelResultIsReady(MICROPHONE_CHANNEL))
    {
        //Sample the ADC and store
        vReal[sampleCounter]=(double)ADCHS_ChannelResultGet(MICROPHONE_CHANNEL);
        
        //Clear corresponding Imaginary value
        vImag[sampleCounter]=0;
        
        //Move onto the next sample index
        sampleCounter++;
        
        
        if(sampleCounter >= SAMPLES)
        {
            sampleCounter = 0;
            
            //Resume the FFT task to do calculations
            setFFTUpdate(true);
            //vTaskResume(FFT_Task_Handle);
            
            TMR3_Stop();
            //TMR3_InterruptDisable();
            
        }
        else
        {            
        }
    }
    
    //Start the next ADC channel gather
    ADCHS_ChannelConversionStart(MICROPHONE_CHANNEL);
}


void setupMicrophoneGather(void)
{
    ADCCSS1bits.CSS11=1;
    TMR3_CallbackRegister((TMR_CALLBACK)TMR3_Interrupt_Callback,1);
    TMR3_Start();
}