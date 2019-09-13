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
    
void setupNeopixel(void);
void updateNeoData(uint32_t * buf);
void neopixelHaltUpdate(void);


#ifdef	__cplusplus
}
#endif

#endif	/* NEOPIXEL_H */

