/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app.h"
#include "ADCGather.h"
#include "neopixel.h"
#include "FFT.h"
#include "config/FFT/peripheral/gpio/plib_gpio.h"
#include <stdio.h>

#include "config/FFT/peripheral/tmr/plib_tmr3.h"


APP_DATA appData;

void setupUART(void);




//TaskHandle_t FFT_Task_Handle;
void FFT_Task(void);

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;

    setupNeopixel();
    setupMicrophoneGather();
    
    //TMR3_Stop();
}


/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( appData.state )
    {
        /* Application's initial state. */
        case APP_STATE_INIT:
        {
            bool appInitialized = true;
            TMR3_Start();
            if (appInitialized)
            {
                appData.state = APP_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_STATE_SERVICE_TASKS:
        {
            updateFFTDisplay();
//                      int timesIdle = updateFFTDisplay();
  
            //if(timesIdle > 100)
//            {
//                testNEO();
//            }
            
            // Simply make neopixels do neopixels stuff
//              testNEO();
//            int i=0;
//            for (i=0x7FFF;i>0;i--);
//
//            if(getNeopixelDisabled())
//                testNEO();
            LED1_Toggle();
//            vTaskDelay(20/portTICK_PERIOD_MS);
            break;
        }

        /* TODO: implement your application state machine.*/


        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}

/*******************************************************************************
 End of File
 */
