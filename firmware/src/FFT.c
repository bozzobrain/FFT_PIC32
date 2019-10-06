/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */
#include "config/FFT/peripheral/tmr/plib_tmr3.h"
#include "FFT.h"
#include "neopixel.h"
#include "ADCGather.h"
#include <stdio.h>

uint16_t _samples;

unsigned int sampling_period_us = (int) (1000000*(1.0/SAMPLING_FREQUENCY_BASE));
unsigned long microseconds;

float cutoffLimitLow = CUTOFF_LIMIT_LOW_BASE;
float cutoffLimitMid = CUTOFF_LIMIT_MID_BASE;
float cutoffLimitHigh = CUTOFF_LIMIT_HIGH_BASE;

float lowLimit = FFT_MAG_LIMIT_LOWS_BASE;
float midLimit = FFT_MAG_LIMIT_MIDS_BASE;
float highLimit = FFT_MAG_LIMIT_HIGHS_BASE;

float brightnessLow = BRIGHTNESS_LOW_BASE;
float brightnessMid = BRIGHTNESS_MID_BASE;
float brightnessHigh = BRIGHTNESS_HIGH_BASE;

uint8_t lowGroup = LOW_GROUP_BASE;
uint8_t midGroup = MID_GROUP_BASE;

float limitScaler = LIMIT_SCALER_BASE;

uint16_t filterCounter = 0;

bool doFFT = false;
volatile double vRealFilt[FILTER_DEPTH+1][SAMPLES];
volatile double vRealSmoother[SAMPLES];

uint8_t Exponent(uint16_t value);
void Swap(volatile double *x, volatile double *y);
void _Compute(volatile double *_vReal, volatile double *_vImag, uint16_t samples, uint8_t power, uint8_t dir);

void initFFT(uint16_t samples)
{
    _samples = samples;
}

void Compute(volatile double *_vReal, volatile double *_vImag, uint16_t samples, uint8_t dir)
{
	_Compute(_vReal, _vImag, samples, Exponent(samples), dir);
}


void _Compute(volatile double *_vReal, volatile double *_vImag, uint16_t samples, uint8_t power, uint8_t dir)
{	// Computes in-place complex-to-complex FFT
	// Reverse bits
	uint16_t j = 0;
    uint16_t i;
	for (i = 0; i < (samples - 1); i++) {
//        printf("%f ", _vReal[i]);
		if (i < j) {
			Swap(&_vReal[i], &_vReal[j]);
			if(dir==FFT_REVERSE)
				Swap(&_vImag[i], &_vImag[j]);
		}
		uint16_t k = (samples >> 1);
		while (k <= j) {
			j -= k;
			k >>= 1;
		}
		j += k;
	}
//    printf("\r\n");
	// Compute the FFT
	double c1 = -1.0;
	double c2 = 0.0;
	uint16_t l2 = 1;
    uint8_t l;
	for (l = 0; (l < power); l++) {
		uint16_t l1 = l2;
		l2 <<= 1;
		double u1 = 1.0;
		double u2 = 0.0;
		for (j = 0; j < l1; j++) {
            uint16_t i;
			 for (i = j; i < samples; i += l2) {
					uint16_t i1 = i + l1;
					double t1 = u1 * _vReal[i1] - u2 * _vImag[i1];
					double t2 = u1 * _vImag[i1] + u2 * _vReal[i1];
					_vReal[i1] = _vReal[i] - t1;
					_vImag[i1] = _vImag[i] - t2;
					_vReal[i] += t1;
					_vImag[i] += t2;
			 }
			 double z = ((u1 * c1) - (u2 * c2));
			 u2 = ((u1 * c2) + (u2 * c1));
			 u1 = z;
		}
		c2 = sqrt((1.0 - c1) / 2.0);
		if (dir == FFT_FORWARD) {
			c2 = -c2;
		}
		c1 = sqrt((1.0 + c1) / 2.0);
	}
	// Scaling for reverse transform
	if (dir != FFT_FORWARD) {
        uint16_t i;
		for (i = 0; i < samples; i++) {
			 _vReal[i] /= samples;
			 _vImag[i] /= samples;
		}
	}
}


void ComplexToMagnitude(volatile double *_vReal, volatile double *_vImag, uint16_t samples)
{	// vM is half the size of vReal and _vImag
    uint16_t i;
	for (i = 0; i < samples; i++) {
		_vReal[i] = sqrt(pow(_vReal[i],2) + pow(_vImag[i],2));
	}
}


double MajorPeak(double *vD, uint16_t samples, double samplingFrequency)
{
	double maxY = 0;
	uint16_t IndexOfMaxY = 0;
	//If sampling_frequency = 2 * max_frequency in signal,
	//value would be stored at position samples/2
    uint16_t i;
	for (i = 1; i < ((samples >> 1) + 1); i++) {
		if ((vD[i-1] < vD[i]) && (vD[i] > vD[i+1])) {
			if (vD[i] > maxY) {
				maxY = vD[i];
				IndexOfMaxY = i;
			}
		}
	}
	double delta = 0.5 * ((vD[IndexOfMaxY-1] - vD[IndexOfMaxY+1]) / (vD[IndexOfMaxY-1] - (2.0 * vD[IndexOfMaxY]) + vD[IndexOfMaxY+1]));
	double interpolatedX = ((IndexOfMaxY + delta)  * samplingFrequency) / (samples-1);
	if(IndexOfMaxY==(samples >> 1)) //To improve calculation on edge values
		interpolatedX = ((IndexOfMaxY + delta)  * samplingFrequency) / (samples);
	// returned value: interpolated frequency peak apex
	return(interpolatedX);
}


uint8_t Exponent(uint16_t value)
{
	// Calculates the base 2 logarithm of a value
	uint8_t result = 0;
	while (((value >> result) & 1) != 1) result++;
	return(result);
}

// Private functions

void Swap(volatile double *x, volatile double *y)
{
	volatile double temp = *x;
	*x = *y;
	*y = temp;
}

void setFFTUpdate(bool state)
{
    doFFT=state;
}

bool getDoFFT(void)
{
    return doFFT;
}

void updateFFTDisplay(void)
{
    if(doFFT)
    {
        //vTaskResume(FFT_Task_Handle);

        //Print ADC values
        //printFFT(vReal);

        //Compute the FFT
        Compute(getvReal(), getvImag(), SAMPLES, FFT_FORWARD); /* Compute FFT */
        ComplexToMagnitude(getvReal(), getvImag(), SAMPLES); /* Compute magnitudes */   
        
#ifdef USE_FILTER
        int i=0;
        for(i=0;i<SAMPLES;i++)
        {
        #ifdef USE_BETTER_FILTER
            vRealFilt[filterCounter][i] = getvRealElem(i);
            double total=0;
            int j=0;
            for(j=0; j<FILTER_DEPTH-1;j++)
            {
              total += vRealFilt[j][i];
            }

            vRealFilt[FILTER_DEPTH][i] = total/FILTER_DEPTH;

            //vRealSmoother[i] = vRealFilt[FILTER_DEPTH][i];                    
            vRealSmoother[i] = (vRealSmoother[i] + (double)vRealFilt[FILTER_DEPTH][i]) / 2.0; //vRealFilt[FILTER_DEPTH][i];//
        #else                       
            vRealSmoother[i]=((vRealSmoother[i]*0.4) + (vReal[i]*(0.6)));

        #endif
        }
        #ifdef USE_BETTER_FILTER
        filterCounter++;
        if(filterCounter>=FILTER_DEPTH)
        {
          filterCounter=0;
        }
        #endif
        //Update the LEDs with newest FFT data
        DisplayFFT(vRealSmoother);  
#else
        DisplayFFT(getvReal());
#endif
        updateNeoData();

        //Print FFT values
        //printFFT(vReal);

        //Wait while pixels get updated
        while(doFFT);        
        TMR3_Start();
    }
}
void DisplayFFT(volatile double * values)
{
  float brightnessScaling = 0;
  unsigned char j=1, subSamples=0;
  unsigned char red, green, blue;
  int i;
  for(i = 0; i < NUMBER_LEDS; i++)
  {

    //Select color per subset of frequencies
    if(i<(lowGroup))
    {      

        brightnessScaling = ((values[j])/(lowLimit));
//        
        if(values[j] > lowLimit/2)
        {
          float overLimitValue = (values[j]-lowLimit/2);
          brightnessScaling += (overLimitValue/lowLimit) *2;
        }
        
//        brightnessScaling = (pow(values[j],2)/(lowLimit))/200.0;

        
        if(brightnessScaling < cutoffLimitLow)
          brightnessScaling = 0;
       
        unsigned char brightness = (unsigned char)(255.0*brightnessLow*brightnessScaling);
        
        
        if (brightness > BRIGHTNESS_LIMIT)
        {
          brightness = BRIGHTNESS_LIMIT;
        }
        else if (brightness < 0)
          brightness = 0;
        
        red=brightness;
        green=0;
        blue=0;
        //j++;
    }
    else if (i<(midGroup))
    {
        brightnessScaling = ((values[j])/(midLimit));
//        
//        if(values[j] > midLimit/2)
//        {
//          float overLimitValue = (values[j]-midLimit/2);
//          brightnessScaling += (overLimitValue/midLimit) *2;
//        }
        
//        brightnessScaling = (pow(values[j],2)/(midLimit))/200.0;
        
        if(brightnessScaling < cutoffLimitMid)
          brightnessScaling = 0;  
          
        unsigned char brightness = (unsigned char)(255.0*brightnessMid*brightnessScaling);
        if(brightness > BRIGHTNESS_LIMIT)
          brightness = BRIGHTNESS_LIMIT;     
        else if (brightness < 0)
          brightness = 0;
        red=brightness;
        green=brightness;
        blue=0;
    }
    else 
    {
        brightnessScaling = ((values[j])/(highLimit));
//        if(values[j] > highLimit/2)
//        {
//          float overLimitValue = (values[j]-highLimit/2);
//          brightnessScaling += (overLimitValue/highLimit) *2;
//        }
//        
        
//        brightnessScaling = (pow(values[j],2)/(highLimit))/200.0;
        
        if(brightnessScaling < cutoffLimitHigh)
          brightnessScaling = 0;
        

        unsigned char brightness = (unsigned char)(255.0*brightnessHigh*brightnessScaling);
        if(brightness > BRIGHTNESS_LIMIT)
          brightness = BRIGHTNESS_LIMIT;
        else if (brightness < 0)
          brightness = 0;
        red=0;
        green=brightness;
        blue=0;
    }
    
    setLEDColor(i+1,red,green,blue);

    
    subSamples++;
    if(subSamples>=NUMBER_LEDS_PER_SAMPLE)
    {
      j++;
      if(j>SAMPLES/2)
        break;
      subSamples=0;
    }
  }
}

void printFFT(volatile double * values)
{
    int i=0;
    for(i=0;i<SAMPLES/2;i++)
    {
        printf("%d ",(int)values[i]);
    }
    printf("\r\n");
}


/* *****************************************************************************
 End of File
 */
