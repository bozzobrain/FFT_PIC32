#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-FFT.mk)" "nbproject/Makefile-local-FFT.mk"
include nbproject/Makefile-local-FFT.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=FFT
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FFT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FFT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/neopixel.c ../src/FFT.c ../src/ADCGather.c ../src/UART.c ../src/config/FFT/peripheral/ocmp/plib_ocmp6.c ../src/main.c ../src/config/FFT/initialization.c ../src/config/FFT/interrupts.c ../src/config/FFT/exceptions.c ../src/config/FFT/stdio/xc32_monitor.c ../src/config/FFT/peripheral/clk/plib_clk.c ../src/config/FFT/peripheral/gpio/plib_gpio.c ../src/config/FFT/peripheral/evic/plib_evic.c ../src/config/FFT/peripheral/ocmp/plib_ocmp4.c ../src/config/FFT/peripheral/ocmp/plib_ocmp2.c ../src/config/FFT/peripheral/ocmp/plib_ocmp3.c ../src/config/FFT/peripheral/adchs/plib_adchs.c ../src/config/FFT/peripheral/uart/plib_uart1.c ../src/config/FFT/driver/usart/src/drv_usart.c ../src/config/FFT/peripheral/tmr/plib_tmr2.c ../src/config/FFT/peripheral/tmr/plib_tmr3.c ../src/config/FFT/system/dma/sys_dma.c ../src/app.c ../src/config/FFT/tasks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/neopixel.o ${OBJECTDIR}/_ext/1360937237/FFT.o ${OBJECTDIR}/_ext/1360937237/ADCGather.o ${OBJECTDIR}/_ext/1360937237/UART.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1272119167/initialization.o ${OBJECTDIR}/_ext/1272119167/interrupts.o ${OBJECTDIR}/_ext/1272119167/exceptions.o ${OBJECTDIR}/_ext/489647995/xc32_monitor.o ${OBJECTDIR}/_ext/1317431971/plib_clk.o ${OBJECTDIR}/_ext/2109404916/plib_gpio.o ${OBJECTDIR}/_ext/2109351088/plib_evic.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o ${OBJECTDIR}/_ext/961138470/plib_adchs.o ${OBJECTDIR}/_ext/2109807859/plib_uart1.o ${OBJECTDIR}/_ext/1891070335/drv_usart.o ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o ${OBJECTDIR}/_ext/980732774/sys_dma.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1272119167/tasks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/neopixel.o.d ${OBJECTDIR}/_ext/1360937237/FFT.o.d ${OBJECTDIR}/_ext/1360937237/ADCGather.o.d ${OBJECTDIR}/_ext/1360937237/UART.o.d ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1272119167/initialization.o.d ${OBJECTDIR}/_ext/1272119167/interrupts.o.d ${OBJECTDIR}/_ext/1272119167/exceptions.o.d ${OBJECTDIR}/_ext/489647995/xc32_monitor.o.d ${OBJECTDIR}/_ext/1317431971/plib_clk.o.d ${OBJECTDIR}/_ext/2109404916/plib_gpio.o.d ${OBJECTDIR}/_ext/2109351088/plib_evic.o.d ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o.d ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o.d ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o.d ${OBJECTDIR}/_ext/961138470/plib_adchs.o.d ${OBJECTDIR}/_ext/2109807859/plib_uart1.o.d ${OBJECTDIR}/_ext/1891070335/drv_usart.o.d ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o.d ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o.d ${OBJECTDIR}/_ext/980732774/sys_dma.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1272119167/tasks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/neopixel.o ${OBJECTDIR}/_ext/1360937237/FFT.o ${OBJECTDIR}/_ext/1360937237/ADCGather.o ${OBJECTDIR}/_ext/1360937237/UART.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1272119167/initialization.o ${OBJECTDIR}/_ext/1272119167/interrupts.o ${OBJECTDIR}/_ext/1272119167/exceptions.o ${OBJECTDIR}/_ext/489647995/xc32_monitor.o ${OBJECTDIR}/_ext/1317431971/plib_clk.o ${OBJECTDIR}/_ext/2109404916/plib_gpio.o ${OBJECTDIR}/_ext/2109351088/plib_evic.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o ${OBJECTDIR}/_ext/961138470/plib_adchs.o ${OBJECTDIR}/_ext/2109807859/plib_uart1.o ${OBJECTDIR}/_ext/1891070335/drv_usart.o ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o ${OBJECTDIR}/_ext/980732774/sys_dma.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1272119167/tasks.o

# Source Files
SOURCEFILES=../src/neopixel.c ../src/FFT.c ../src/ADCGather.c ../src/UART.c ../src/config/FFT/peripheral/ocmp/plib_ocmp6.c ../src/main.c ../src/config/FFT/initialization.c ../src/config/FFT/interrupts.c ../src/config/FFT/exceptions.c ../src/config/FFT/stdio/xc32_monitor.c ../src/config/FFT/peripheral/clk/plib_clk.c ../src/config/FFT/peripheral/gpio/plib_gpio.c ../src/config/FFT/peripheral/evic/plib_evic.c ../src/config/FFT/peripheral/ocmp/plib_ocmp4.c ../src/config/FFT/peripheral/ocmp/plib_ocmp2.c ../src/config/FFT/peripheral/ocmp/plib_ocmp3.c ../src/config/FFT/peripheral/adchs/plib_adchs.c ../src/config/FFT/peripheral/uart/plib_uart1.c ../src/config/FFT/driver/usart/src/drv_usart.c ../src/config/FFT/peripheral/tmr/plib_tmr2.c ../src/config/FFT/peripheral/tmr/plib_tmr3.c ../src/config/FFT/system/dma/sys_dma.c ../src/app.c ../src/config/FFT/tasks.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-FFT.mk dist/${CND_CONF}/${IMAGE_TYPE}/FFT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFG100
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/neopixel.o: ../src/neopixel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/neopixel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/neopixel.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/neopixel.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/neopixel.o.d" -o ${OBJECTDIR}/_ext/1360937237/neopixel.o ../src/neopixel.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/FFT.o: ../src/FFT.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/FFT.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/FFT.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/FFT.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/FFT.o.d" -o ${OBJECTDIR}/_ext/1360937237/FFT.o ../src/FFT.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/ADCGather.o: ../src/ADCGather.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ADCGather.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ADCGather.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ADCGather.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/ADCGather.o.d" -o ${OBJECTDIR}/_ext/1360937237/ADCGather.o ../src/ADCGather.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/UART.o: ../src/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/UART.o.d" -o ${OBJECTDIR}/_ext/1360937237/UART.o ../src/UART.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o ../src/config/FFT/peripheral/ocmp/plib_ocmp6.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1272119167/initialization.o: ../src/config/FFT/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/initialization.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1272119167/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1272119167/initialization.o.d" -o ${OBJECTDIR}/_ext/1272119167/initialization.o ../src/config/FFT/initialization.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1272119167/interrupts.o: ../src/config/FFT/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1272119167/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1272119167/interrupts.o.d" -o ${OBJECTDIR}/_ext/1272119167/interrupts.o ../src/config/FFT/interrupts.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1272119167/exceptions.o: ../src/config/FFT/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1272119167/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1272119167/exceptions.o.d" -o ${OBJECTDIR}/_ext/1272119167/exceptions.o ../src/config/FFT/exceptions.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/489647995/xc32_monitor.o: ../src/config/FFT/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/489647995" 
	@${RM} ${OBJECTDIR}/_ext/489647995/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/489647995/xc32_monitor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/489647995/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/489647995/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/489647995/xc32_monitor.o ../src/config/FFT/stdio/xc32_monitor.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1317431971/plib_clk.o: ../src/config/FFT/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1317431971" 
	@${RM} ${OBJECTDIR}/_ext/1317431971/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317431971/plib_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1317431971/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1317431971/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1317431971/plib_clk.o ../src/config/FFT/peripheral/clk/plib_clk.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109404916/plib_gpio.o: ../src/config/FFT/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109404916" 
	@${RM} ${OBJECTDIR}/_ext/2109404916/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109404916/plib_gpio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109404916/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109404916/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/2109404916/plib_gpio.o ../src/config/FFT/peripheral/gpio/plib_gpio.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109351088/plib_evic.o: ../src/config/FFT/peripheral/evic/plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109351088" 
	@${RM} ${OBJECTDIR}/_ext/2109351088/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109351088/plib_evic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109351088/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109351088/plib_evic.o.d" -o ${OBJECTDIR}/_ext/2109351088/plib_evic.o ../src/config/FFT/peripheral/evic/plib_evic.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o ../src/config/FFT/peripheral/ocmp/plib_ocmp4.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o ../src/config/FFT/peripheral/ocmp/plib_ocmp2.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o ../src/config/FFT/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/961138470/plib_adchs.o: ../src/config/FFT/peripheral/adchs/plib_adchs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/961138470" 
	@${RM} ${OBJECTDIR}/_ext/961138470/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/961138470/plib_adchs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/961138470/plib_adchs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/961138470/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/961138470/plib_adchs.o ../src/config/FFT/peripheral/adchs/plib_adchs.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109807859/plib_uart1.o: ../src/config/FFT/peripheral/uart/plib_uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109807859" 
	@${RM} ${OBJECTDIR}/_ext/2109807859/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109807859/plib_uart1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109807859/plib_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109807859/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/2109807859/plib_uart1.o ../src/config/FFT/peripheral/uart/plib_uart1.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1891070335/drv_usart.o: ../src/config/FFT/driver/usart/src/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1891070335" 
	@${RM} ${OBJECTDIR}/_ext/1891070335/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891070335/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1891070335/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1891070335/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1891070335/drv_usart.o ../src/config/FFT/driver/usart/src/drv_usart.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1317415596/plib_tmr2.o: ../src/config/FFT/peripheral/tmr/plib_tmr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1317415596" 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1317415596/plib_tmr2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1317415596/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o ../src/config/FFT/peripheral/tmr/plib_tmr2.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1317415596/plib_tmr3.o: ../src/config/FFT/peripheral/tmr/plib_tmr3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1317415596" 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1317415596/plib_tmr3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1317415596/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o ../src/config/FFT/peripheral/tmr/plib_tmr3.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/980732774/sys_dma.o: ../src/config/FFT/system/dma/sys_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980732774" 
	@${RM} ${OBJECTDIR}/_ext/980732774/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/980732774/sys_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/980732774/sys_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980732774/sys_dma.o.d" -o ${OBJECTDIR}/_ext/980732774/sys_dma.o ../src/config/FFT/system/dma/sys_dma.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1272119167/tasks.o: ../src/config/FFT/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1272119167/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1272119167/tasks.o.d" -o ${OBJECTDIR}/_ext/1272119167/tasks.o ../src/config/FFT/tasks.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1360937237/neopixel.o: ../src/neopixel.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/neopixel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/neopixel.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/neopixel.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/neopixel.o.d" -o ${OBJECTDIR}/_ext/1360937237/neopixel.o ../src/neopixel.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/FFT.o: ../src/FFT.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/FFT.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/FFT.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/FFT.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/FFT.o.d" -o ${OBJECTDIR}/_ext/1360937237/FFT.o ../src/FFT.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/ADCGather.o: ../src/ADCGather.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ADCGather.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ADCGather.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ADCGather.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/ADCGather.o.d" -o ${OBJECTDIR}/_ext/1360937237/ADCGather.o ../src/ADCGather.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/UART.o: ../src/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/UART.o.d" -o ${OBJECTDIR}/_ext/1360937237/UART.o ../src/UART.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o ../src/config/FFT/peripheral/ocmp/plib_ocmp6.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1272119167/initialization.o: ../src/config/FFT/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/initialization.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1272119167/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1272119167/initialization.o.d" -o ${OBJECTDIR}/_ext/1272119167/initialization.o ../src/config/FFT/initialization.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1272119167/interrupts.o: ../src/config/FFT/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/interrupts.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1272119167/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1272119167/interrupts.o.d" -o ${OBJECTDIR}/_ext/1272119167/interrupts.o ../src/config/FFT/interrupts.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1272119167/exceptions.o: ../src/config/FFT/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1272119167/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1272119167/exceptions.o.d" -o ${OBJECTDIR}/_ext/1272119167/exceptions.o ../src/config/FFT/exceptions.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/489647995/xc32_monitor.o: ../src/config/FFT/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/489647995" 
	@${RM} ${OBJECTDIR}/_ext/489647995/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/489647995/xc32_monitor.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/489647995/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/489647995/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/489647995/xc32_monitor.o ../src/config/FFT/stdio/xc32_monitor.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1317431971/plib_clk.o: ../src/config/FFT/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1317431971" 
	@${RM} ${OBJECTDIR}/_ext/1317431971/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317431971/plib_clk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1317431971/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1317431971/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1317431971/plib_clk.o ../src/config/FFT/peripheral/clk/plib_clk.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109404916/plib_gpio.o: ../src/config/FFT/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109404916" 
	@${RM} ${OBJECTDIR}/_ext/2109404916/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109404916/plib_gpio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109404916/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109404916/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/2109404916/plib_gpio.o ../src/config/FFT/peripheral/gpio/plib_gpio.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109351088/plib_evic.o: ../src/config/FFT/peripheral/evic/plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109351088" 
	@${RM} ${OBJECTDIR}/_ext/2109351088/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109351088/plib_evic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109351088/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109351088/plib_evic.o.d" -o ${OBJECTDIR}/_ext/2109351088/plib_evic.o ../src/config/FFT/peripheral/evic/plib_evic.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o ../src/config/FFT/peripheral/ocmp/plib_ocmp4.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o ../src/config/FFT/peripheral/ocmp/plib_ocmp2.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o ../src/config/FFT/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/961138470/plib_adchs.o: ../src/config/FFT/peripheral/adchs/plib_adchs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/961138470" 
	@${RM} ${OBJECTDIR}/_ext/961138470/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/961138470/plib_adchs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/961138470/plib_adchs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/961138470/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/961138470/plib_adchs.o ../src/config/FFT/peripheral/adchs/plib_adchs.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2109807859/plib_uart1.o: ../src/config/FFT/peripheral/uart/plib_uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2109807859" 
	@${RM} ${OBJECTDIR}/_ext/2109807859/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109807859/plib_uart1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2109807859/plib_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2109807859/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/2109807859/plib_uart1.o ../src/config/FFT/peripheral/uart/plib_uart1.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1891070335/drv_usart.o: ../src/config/FFT/driver/usart/src/drv_usart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1891070335" 
	@${RM} ${OBJECTDIR}/_ext/1891070335/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891070335/drv_usart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1891070335/drv_usart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1891070335/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1891070335/drv_usart.o ../src/config/FFT/driver/usart/src/drv_usart.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1317415596/plib_tmr2.o: ../src/config/FFT/peripheral/tmr/plib_tmr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1317415596" 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1317415596/plib_tmr2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1317415596/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o ../src/config/FFT/peripheral/tmr/plib_tmr2.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1317415596/plib_tmr3.o: ../src/config/FFT/peripheral/tmr/plib_tmr3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1317415596" 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1317415596/plib_tmr3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1317415596/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o ../src/config/FFT/peripheral/tmr/plib_tmr3.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/980732774/sys_dma.o: ../src/config/FFT/system/dma/sys_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980732774" 
	@${RM} ${OBJECTDIR}/_ext/980732774/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/980732774/sys_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/980732774/sys_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980732774/sys_dma.o.d" -o ${OBJECTDIR}/_ext/980732774/sys_dma.o ../src/config/FFT/system/dma/sys_dma.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1272119167/tasks.o: ../src/config/FFT/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1272119167/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1272119167/tasks.o.d" -o ${OBJECTDIR}/_ext/1272119167/tasks.o ../src/config/FFT/tasks.c    -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/FFT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FFT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/FFT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FFT.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_FFT=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/FFT.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/FFT
	${RM} -r dist/FFT

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
