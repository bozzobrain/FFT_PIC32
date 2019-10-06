#include "app.h"
#include "UART.h"
#include "config/FFT/driver/usart/drv_usart.h"

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
//TaskHandle_t TX_Task_Handle;
void TX_Task();


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
//     xTaskCreate((TaskFunction_t) TX_Task,
//                "TX_Task",
//                1024,
//                NULL,
//                1,
//                &TX_Task_Handle);
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
            
        }
        //LED3_Toggle();
//        vTaskDelay(1000/portTICK_PERIOD_MS);
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
