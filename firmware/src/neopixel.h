/* 
 * File:   neopixel.h
 * Author: zkilburn
 *
 * Created on September 12, 2019, 11:29 AM
 */

#ifndef NEOPIXEL_H
#define	NEOPIXEL_H

#ifdef	__cplusplus
extern "C" {
#endif


#include "app.h"
    
#define NUMBER_LEDS             300
    
void setupNeopixel(void);
void updateNeoData(void);
void neopixelHaltUpdate(void);
bool getUpdateStatus(void);
void setLEDColor(uint16_t n, uint8_t R, uint8_t G, uint8_t B);

bool getNeopixelDisabled(void);
void testNEO(void);

#ifdef	__cplusplus
}
#endif

#endif	/* NEOPIXEL_H */

