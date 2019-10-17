/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef FFT_H    /* Guard against multiple inclusion */
#define FFT_H

#include "app.h"
#include <math.h>


#define USE_FILTER
//#define USE_BETTER_FILTER
#define PREV_WEIGHT                             0.15
#define BRIGHTNESS_LIMIT                        50U

#define SAMPLING_FREQUENCY_BASE                 10000U
#define LIMIT_SCALER_BASE                       1
#define SAMPLES                                 1024

#define FILTER_DEPTH                            2
#define WEIGHT_PREVIOUS                         0.75
//Adjust the number of LEDs per bin (higher equals less representation and a lower frequency represented
#define NUMBER_LEDS_PER_SAMPLE                  1//(((NUMBER_LEDS/ (SAMPLES))))

#define LOW_GROUP_BASE                        (20)
#define MID_GROUP_BASE                        (60)

#define BRIGHTNESS_SCALER                     0.05
#define CUTOFF_LIMIT_LOW_BASE                 0.3     //0.06 
#define CUTOFF_LIMIT_MID_BASE                 0.2     
#define CUTOFF_LIMIT_HIGH_BASE                0.2      

#define FFT_MAG_LIMIT_LOWS_BASE               10000       //35000
#define FFT_MAG_LIMIT_MIDS_BASE               10000       //20000              //20000 (PIANO) (256 samples)
#define FFT_MAG_LIMIT_HIGHS_BASE              10000       //28000             //22000 (PIANO)
#define FFT_MAG_LIMIT_MIN                     350

#define BRIGHTNESS_LOW_BASE                   0.01
#define BRIGHTNESS_MID_BASE                   BRIGHTNESS_SCALER
#define BRIGHTNESS_HIGH_BASE                  BRIGHTNESS_SCALER

#define FFT_MAG_LIMIT_VOLUME_BASE             1000



#define FFT_LIB_REV 0x14
/* Custom constants */
#define FFT_FORWARD 0x01
#define FFT_REVERSE 0x00

/* Windowing type */
#define FFT_WIN_TYP_RECTANGLE 0x00 /* rectangle (Box car) */
#define FFT_WIN_TYP_HAMMING 0x01 /* hamming */
#define FFT_WIN_TYP_HANN 0x02 /* hann */
#define FFT_WIN_TYP_TRIANGLE 0x03 /* triangle (Bartlett) */
#define FFT_WIN_TYP_NUTTALL 0x04 /* nuttall */
#define FFT_WIN_TYP_BLACKMAN 0x05 /* blackman */
#define FFT_WIN_TYP_BLACKMAN_NUTTALL 0x06 /* blackman nuttall */
#define FFT_WIN_TYP_BLACKMAN_HARRIS 0x07 /* blackman harris*/
#define FFT_WIN_TYP_FLT_TOP 0x08 /* flat top */
#define FFT_WIN_TYP_WELCH 0x09 /* welch */
/*Mathematial constants*/
#define twoPi 6.28318531
#define fourPi 12.56637061
#define sixPi 18.84955593


void initFFT(uint16_t samples);
void Compute(volatile double *_vReal, volatile double *_vImag, uint16_t samples, uint8_t dir);
void ComplexToMagnitude(volatile double *_vReal, volatile double *_vImag, uint16_t samples);
double MajorPeak(double *vD, uint16_t samples, double samplingFrequency);
int updateFFTDisplay(void);
uint16_t DisplayFFT(volatile double * values);
void printFFT(volatile double * values);
void setFFTUpdate(bool state);
bool getDoFFT(void);

    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
