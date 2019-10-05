
#ifndef _EXAMPLE_FILE_NAME_H    /* Guard against multiple inclusion */
#define _EXAMPLE_FILE_NAME_H

#include "app.h"

volatile double * getvReal(void);
volatile double * getvImag(void);
volatile double getvRealElem(uint16_t elem);
void setupMicrophoneGather(void);
void TMR3_Interrupt_Callback(void);


    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

