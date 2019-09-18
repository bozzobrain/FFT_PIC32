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
#include "config/FFT/peripheral/gpio/plib_gpio.h"
#include "config/FFT/driver/usart/drv_usart.h"
#include "config/FFT/peripheral/adchs/plib_adchs.h"
#include "config/FFT/peripheral/tmr/plib_tmr3.h"
#include "neopixel.h"
#include "FFT.h"
#include <stdio.h>


APP_DATA appData;

void setupUART(void);

DRV_HANDLE USART_0_Handle;
DRV_USART_SERIAL_SETUP setup = {
        115200,
        DRV_USART_PARITY_NONE,
        DRV_USART_DATA_8_BIT,
        DRV_USART_STOP_1_BIT
    };
typedef uint8_t MY_APP_OBJ;
MY_APP_OBJ myAppObj;

void APP_USARTBufferEventHandler(
    DRV_USART_BUFFER_EVENT event,
    DRV_USART_BUFFER_HANDLE handle,
    uintptr_t context
);

TaskHandle_t TX_Task_Handle;
void TX_Task();

volatile double vReal[SAMPLES];
volatile double vImag[SAMPLES];
volatile double vRealSmoother[SAMPLES];
uint16_t sampleCounter = 0;

void setupFFT(void);
TaskHandle_t FFT_Task_Handle;
void FFT_Task(void);
bool doFFT = false;

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_INIT;

    //setupUART();
    setupNeopixel();
    setupFFT();
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
            
            if (appInitialized)
            {
                appData.state = APP_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_STATE_SERVICE_TASKS:
        {
            if(doFFT)
            {
                vTaskResume(FFT_Task_Handle);
                doFFT=false;
            }
            vTaskDelay(40/portTICK_PERIOD_MS);
//            static uint8_t red = 255;
//            red++;
//            if(red>255)
//                red = 0;
//            
//            int i=0;
//            for (i=1;i<=NUMBER_LEDS;i++)
//            {
//                setLEDColor(i,red,0,0);
//            }
//            updateNeoData();
            LED1_Toggle();
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

void TMR3_Interrupt_Callback(void)
{   
    if(ADCHS_ChannelResultIsReady(MICROPHONE_CHANNEL))
    {
        //LED2_Toggle();
        vReal[sampleCounter]=(double)ADCHS_ChannelResultGet(MICROPHONE_CHANNEL);
        vImag[sampleCounter]=0;
        sampleCounter++;
        if(sampleCounter > SAMPLES)
        {
            //LED3_Toggle();
            sampleCounter = 0;
            //ADCHS_ChannelResultInterruptDisable(CHANNEL_2);
            doFFT = true;
            //vTaskResume(FFT_Task_Handle);
            TMR3_Stop();
            //TMR3_InterruptDisable();
            
        }
    }
    ADCHS_ChannelConversionStart(MICROPHONE_CHANNEL);
    //ADCHS_GlobalLevelConversionStart();
    //LED4_Toggle();
}


void setupFFT(void)
{
    TMR3_CallbackRegister((TMR_CALLBACK)TMR3_Interrupt_Callback,1);
    TMR3_Start();
    
    
     xTaskCreate((TaskFunction_t) FFT_Task,
                "FFT_Task",
                2048,
                NULL,
                1,
                &FFT_Task_Handle);
}

void FFT_Task(void)
{
    vTaskSuspend(NULL);
    while(1)
    {       
        //TMR3_Stop();
        //printFFT(vReal);
        Compute(vReal, vImag, SAMPLES, FFT_FORWARD); /* Compute FFT */
        ComplexToMagnitude(vReal, vImag, SAMPLES); /* Compute magnitudes */        
        
//        int i=0;
//        for(i=0;i<SAMPLES;i++)
//        {
//             vRealSmoother[i]=((vRealSmoother[i]*WEIGHT_PREVIOUS) + (vReal[i]*(1.0-WEIGHT_PREVIOUS)));
//        }
        DisplayFFT(vReal);        
        updateNeoData();
        //printFFT(vReal);
        TMR3_Start();
        
        //ADCHS_ChannelConversionStart(CHANNEL_2);
        vTaskSuspend(NULL);
    }
}

//void Interrupthandler()
//{
//    portCHAR cC;
//    cC = LLUSART_ReceiveData8(USART6);
//    xQueueSendFromISR(xQueueUartRx,&cC, NULL);
//}
//
//void RX_Task()
//{
//    char Ccar;
//    for (;;)
//    {
//        if (xQueueReceive( xQueueUartRx,&Ccar, portMAX_DELAY ) == pdTRUE)
//        {
//            // do somethings
//        }
//    }
//}


void setupUART(void)
{    
    USART_0_Handle=DRV_USART_Open(DRV_USART_INDEX_0, DRV_IO_INTENT_READWRITE);
    if (USART_0_Handle == DRV_HANDLE_INVALID)
    {
        // Unable to open the driver
        // May be the driver is not initialized or the initialization
        // is not complete.
        //LED3_Toggle();
    }
    
    DRV_USART_SerialSetup(USART_0_Handle, &setup);
    
    DRV_USART_BufferEventHandlerSet(
        USART_0_Handle,
        APP_USARTBufferEventHandler,
        (uintptr_t)&myAppObj
    );
     xTaskCreate((TaskFunction_t) TX_Task,
                "TX_Task",
                1024,
                NULL,
                1,
                &TX_Task_Handle);
}

void TX_Task()
{
    DRV_USART_BUFFER_HANDLE sendHandle;
    uint8_t sendBuf[13]={"Hello World\n"};   
    while(1){
        
        DRV_USART_WriteBufferAdd(USART_0_Handle, sendBuf, 13, &sendHandle); 
      
        
        if(sendHandle == DRV_USART_BUFFER_HANDLE_INVALID)
        {
            // Error handling here
            LED2_Toggle();
        }
        //LED3_Toggle();
        vTaskDelay(1000/portTICK_PERIOD_MS);
    }
}

void APP_USARTBufferEventHandler(
    DRV_USART_BUFFER_EVENT event,
    DRV_USART_BUFFER_HANDLE handle,
    uintptr_t context
)
{
    // The context handle was set to an application specific
    // object. It is now retrievable easily in the event handler.
    //MY_APP_OBJ* myAppObj = (MY_APP_OBJ *) context;

    switch(event)
    {
        case DRV_USART_BUFFER_EVENT_COMPLETE:
            // This means the data was transferred.
            //LED4_Toggle();
            break;

        case DRV_USART_BUFFER_EVENT_ERROR:
            // Error handling here.
            break;

        default:
            break;
    }
}


/*******************************************************************************
 End of File
 */
