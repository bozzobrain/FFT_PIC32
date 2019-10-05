#include "ADCGather.h"
#include "config/FFT/peripheral/adchs/plib_adchs.h"
#include "config/FFT/peripheral/tmr/plib_tmr3.h"
#include "FFT.h"


volatile double vReal[SAMPLES];
volatile double vImag[SAMPLES];
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

void TMR3_Interrupt_Callback(void)
{   
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
            setFFTUpdate();
            //vTaskResume(FFT_Task_Handle);
            
            TMR3_Stop();
            //TMR3_InterruptDisable();
            
        }
    }
    
    //Start the next ADC channel gather
    ADCHS_ChannelConversionStart(MICROPHONE_CHANNEL);
}


void setupMicrophoneGather(void)
{
    TMR3_CallbackRegister((TMR_CALLBACK)TMR3_Interrupt_Callback,1);
    TMR3_Start();
}