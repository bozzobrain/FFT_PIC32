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
FINAL_IMAGE=${DISTDIR}/FFT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/FFT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/FFT/driver/usart/src/drv_usart.c ../src/config/FFT/peripheral/adchs/plib_adchs.c ../src/config/FFT/peripheral/clk/plib_clk.c ../src/config/FFT/peripheral/evic/plib_evic.c ../src/config/FFT/peripheral/gpio/plib_gpio.c ../src/config/FFT/peripheral/ocmp/plib_ocmp6.c ../src/config/FFT/peripheral/ocmp/plib_ocmp4.c ../src/config/FFT/peripheral/ocmp/plib_ocmp2.c ../src/config/FFT/peripheral/ocmp/plib_ocmp3.c ../src/config/FFT/peripheral/tmr/plib_tmr2.c ../src/config/FFT/peripheral/tmr/plib_tmr3.c ../src/config/FFT/peripheral/uart/plib_uart1.c ../src/config/FFT/stdio/xc32_monitor.c ../src/config/FFT/system/dma/sys_dma.c ../src/config/FFT/initialization.c ../src/config/FFT/interrupts.c ../src/config/FFT/exceptions.c ../src/config/FFT/tasks.c ../src/neopixel.c ../src/FFT.c ../src/ADCGather.c ../src/UART.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1891070335/drv_usart.o ${OBJECTDIR}/_ext/961138470/plib_adchs.o ${OBJECTDIR}/_ext/1317431971/plib_clk.o ${OBJECTDIR}/_ext/2109351088/plib_evic.o ${OBJECTDIR}/_ext/2109404916/plib_gpio.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o ${OBJECTDIR}/_ext/2109807859/plib_uart1.o ${OBJECTDIR}/_ext/489647995/xc32_monitor.o ${OBJECTDIR}/_ext/980732774/sys_dma.o ${OBJECTDIR}/_ext/1272119167/initialization.o ${OBJECTDIR}/_ext/1272119167/interrupts.o ${OBJECTDIR}/_ext/1272119167/exceptions.o ${OBJECTDIR}/_ext/1272119167/tasks.o ${OBJECTDIR}/_ext/1360937237/neopixel.o ${OBJECTDIR}/_ext/1360937237/FFT.o ${OBJECTDIR}/_ext/1360937237/ADCGather.o ${OBJECTDIR}/_ext/1360937237/UART.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1891070335/drv_usart.o.d ${OBJECTDIR}/_ext/961138470/plib_adchs.o.d ${OBJECTDIR}/_ext/1317431971/plib_clk.o.d ${OBJECTDIR}/_ext/2109351088/plib_evic.o.d ${OBJECTDIR}/_ext/2109404916/plib_gpio.o.d ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o.d ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o.d ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o.d ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o.d ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o.d ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o.d ${OBJECTDIR}/_ext/2109807859/plib_uart1.o.d ${OBJECTDIR}/_ext/489647995/xc32_monitor.o.d ${OBJECTDIR}/_ext/980732774/sys_dma.o.d ${OBJECTDIR}/_ext/1272119167/initialization.o.d ${OBJECTDIR}/_ext/1272119167/interrupts.o.d ${OBJECTDIR}/_ext/1272119167/exceptions.o.d ${OBJECTDIR}/_ext/1272119167/tasks.o.d ${OBJECTDIR}/_ext/1360937237/neopixel.o.d ${OBJECTDIR}/_ext/1360937237/FFT.o.d ${OBJECTDIR}/_ext/1360937237/ADCGather.o.d ${OBJECTDIR}/_ext/1360937237/UART.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1891070335/drv_usart.o ${OBJECTDIR}/_ext/961138470/plib_adchs.o ${OBJECTDIR}/_ext/1317431971/plib_clk.o ${OBJECTDIR}/_ext/2109351088/plib_evic.o ${OBJECTDIR}/_ext/2109404916/plib_gpio.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o ${OBJECTDIR}/_ext/2109807859/plib_uart1.o ${OBJECTDIR}/_ext/489647995/xc32_monitor.o ${OBJECTDIR}/_ext/980732774/sys_dma.o ${OBJECTDIR}/_ext/1272119167/initialization.o ${OBJECTDIR}/_ext/1272119167/interrupts.o ${OBJECTDIR}/_ext/1272119167/exceptions.o ${OBJECTDIR}/_ext/1272119167/tasks.o ${OBJECTDIR}/_ext/1360937237/neopixel.o ${OBJECTDIR}/_ext/1360937237/FFT.o ${OBJECTDIR}/_ext/1360937237/ADCGather.o ${OBJECTDIR}/_ext/1360937237/UART.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/FFT/driver/usart/src/drv_usart.c ../src/config/FFT/peripheral/adchs/plib_adchs.c ../src/config/FFT/peripheral/clk/plib_clk.c ../src/config/FFT/peripheral/evic/plib_evic.c ../src/config/FFT/peripheral/gpio/plib_gpio.c ../src/config/FFT/peripheral/ocmp/plib_ocmp6.c ../src/config/FFT/peripheral/ocmp/plib_ocmp4.c ../src/config/FFT/peripheral/ocmp/plib_ocmp2.c ../src/config/FFT/peripheral/ocmp/plib_ocmp3.c ../src/config/FFT/peripheral/tmr/plib_tmr2.c ../src/config/FFT/peripheral/tmr/plib_tmr3.c ../src/config/FFT/peripheral/uart/plib_uart1.c ../src/config/FFT/stdio/xc32_monitor.c ../src/config/FFT/system/dma/sys_dma.c ../src/config/FFT/initialization.c ../src/config/FFT/interrupts.c ../src/config/FFT/exceptions.c ../src/config/FFT/tasks.c ../src/neopixel.c ../src/FFT.c ../src/ADCGather.c ../src/UART.c ../src/main.c ../src/app.c



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
	${MAKE}  -f nbproject/Makefile-FFT.mk ${DISTDIR}/FFT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1891070335/drv_usart.o: ../src/config/FFT/driver/usart/src/drv_usart.c  .generated_files/flags/FFT/7e2ca48ad2851e78b8af722c3507f0ec5686b1c2 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891070335" 
	@${RM} ${OBJECTDIR}/_ext/1891070335/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891070335/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891070335/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1891070335/drv_usart.o ../src/config/FFT/driver/usart/src/drv_usart.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/961138470/plib_adchs.o: ../src/config/FFT/peripheral/adchs/plib_adchs.c  .generated_files/flags/FFT/fb12a405dfa4490110bff647485019f2d8e4d1cb .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/961138470" 
	@${RM} ${OBJECTDIR}/_ext/961138470/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/961138470/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/961138470/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/961138470/plib_adchs.o ../src/config/FFT/peripheral/adchs/plib_adchs.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317431971/plib_clk.o: ../src/config/FFT/peripheral/clk/plib_clk.c  .generated_files/flags/FFT/8d14aae749ccdc5f1f82b1220c71448213bec721 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1317431971" 
	@${RM} ${OBJECTDIR}/_ext/1317431971/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317431971/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317431971/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1317431971/plib_clk.o ../src/config/FFT/peripheral/clk/plib_clk.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109351088/plib_evic.o: ../src/config/FFT/peripheral/evic/plib_evic.c  .generated_files/flags/FFT/5fe8c255c6df93463efbbd5d0131299a35e1fbcc .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109351088" 
	@${RM} ${OBJECTDIR}/_ext/2109351088/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109351088/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109351088/plib_evic.o.d" -o ${OBJECTDIR}/_ext/2109351088/plib_evic.o ../src/config/FFT/peripheral/evic/plib_evic.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109404916/plib_gpio.o: ../src/config/FFT/peripheral/gpio/plib_gpio.c  .generated_files/flags/FFT/b548a64a5d30f20e250d93833816217b3a57d4a4 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109404916" 
	@${RM} ${OBJECTDIR}/_ext/2109404916/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109404916/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109404916/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/2109404916/plib_gpio.o ../src/config/FFT/peripheral/gpio/plib_gpio.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp6.c  .generated_files/flags/FFT/68c6950cf4f898705e385673cbac6a07ed3c2fe .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o ../src/config/FFT/peripheral/ocmp/plib_ocmp6.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp4.c  .generated_files/flags/FFT/2c47f921304764991881ca8f4f88060b6c447f19 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o ../src/config/FFT/peripheral/ocmp/plib_ocmp4.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp2.c  .generated_files/flags/FFT/ed55b89d6c505382727b2fdc8716a457920e8084 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o ../src/config/FFT/peripheral/ocmp/plib_ocmp2.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp3.c  .generated_files/flags/FFT/5baf46703a3d55989ae544ad23a2c66923a18c1f .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o ../src/config/FFT/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317415596/plib_tmr2.o: ../src/config/FFT/peripheral/tmr/plib_tmr2.c  .generated_files/flags/FFT/3059cc71f03d3ed62d4f2c9f97c7d9045bcbb822 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1317415596" 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317415596/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o ../src/config/FFT/peripheral/tmr/plib_tmr2.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317415596/plib_tmr3.o: ../src/config/FFT/peripheral/tmr/plib_tmr3.c  .generated_files/flags/FFT/1370c6cb30d854e2b46d7ccfb2a54cf2e0f1f2a .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1317415596" 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317415596/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o ../src/config/FFT/peripheral/tmr/plib_tmr3.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109807859/plib_uart1.o: ../src/config/FFT/peripheral/uart/plib_uart1.c  .generated_files/flags/FFT/414c05003ae23d22c3a2f5a72669b455c030b919 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109807859" 
	@${RM} ${OBJECTDIR}/_ext/2109807859/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109807859/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109807859/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/2109807859/plib_uart1.o ../src/config/FFT/peripheral/uart/plib_uart1.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/489647995/xc32_monitor.o: ../src/config/FFT/stdio/xc32_monitor.c  .generated_files/flags/FFT/ae9ab2cc158b54afc4de26e28ca4898306efc2c0 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/489647995" 
	@${RM} ${OBJECTDIR}/_ext/489647995/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/489647995/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/489647995/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/489647995/xc32_monitor.o ../src/config/FFT/stdio/xc32_monitor.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/980732774/sys_dma.o: ../src/config/FFT/system/dma/sys_dma.c  .generated_files/flags/FFT/fa1bac5f763738293e353fcd2a89db349b12da4a .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/980732774" 
	@${RM} ${OBJECTDIR}/_ext/980732774/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/980732774/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/980732774/sys_dma.o.d" -o ${OBJECTDIR}/_ext/980732774/sys_dma.o ../src/config/FFT/system/dma/sys_dma.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1272119167/initialization.o: ../src/config/FFT/initialization.c  .generated_files/flags/FFT/8fdf0ead9b624059bba60a0aef96b550a3db1cb8 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1272119167/initialization.o.d" -o ${OBJECTDIR}/_ext/1272119167/initialization.o ../src/config/FFT/initialization.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1272119167/interrupts.o: ../src/config/FFT/interrupts.c  .generated_files/flags/FFT/11ea51165d08c54e7318475e5e5081bbd2ab1cab .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1272119167/interrupts.o.d" -o ${OBJECTDIR}/_ext/1272119167/interrupts.o ../src/config/FFT/interrupts.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1272119167/exceptions.o: ../src/config/FFT/exceptions.c  .generated_files/flags/FFT/7656e9ebba2418b0c5b576373299478f81f0757e .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1272119167/exceptions.o.d" -o ${OBJECTDIR}/_ext/1272119167/exceptions.o ../src/config/FFT/exceptions.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1272119167/tasks.o: ../src/config/FFT/tasks.c  .generated_files/flags/FFT/7b2c120568e1bc5f163737606922c8103663073d .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1272119167/tasks.o.d" -o ${OBJECTDIR}/_ext/1272119167/tasks.o ../src/config/FFT/tasks.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/neopixel.o: ../src/neopixel.c  .generated_files/flags/FFT/7255ba3d88f5e9e261fc21a3170c0d1f5f71e369 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/neopixel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/neopixel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/neopixel.o.d" -o ${OBJECTDIR}/_ext/1360937237/neopixel.o ../src/neopixel.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/FFT.o: ../src/FFT.c  .generated_files/flags/FFT/de05ba49e525447f6e66be2c44414015ce5aef1f .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/FFT.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/FFT.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/FFT.o.d" -o ${OBJECTDIR}/_ext/1360937237/FFT.o ../src/FFT.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ADCGather.o: ../src/ADCGather.c  .generated_files/flags/FFT/21983f65fa1cedde615ce3f44c7eeefebc404af9 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ADCGather.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ADCGather.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ADCGather.o.d" -o ${OBJECTDIR}/_ext/1360937237/ADCGather.o ../src/ADCGather.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/UART.o: ../src/UART.c  .generated_files/flags/FFT/e4446ec4f74d1b37ea666429f89117eb432a60b1 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UART.o.d" -o ${OBJECTDIR}/_ext/1360937237/UART.o ../src/UART.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/FFT/6a7c9fa4b6f52a59e56f57f48b806ef89bc0186b .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/FFT/8b9eaa71c5e6c29d4c766b94cd78ccebc47a0a6b .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1891070335/drv_usart.o: ../src/config/FFT/driver/usart/src/drv_usart.c  .generated_files/flags/FFT/98731020d188b63d6a2988ceae221ada55fb7645 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1891070335" 
	@${RM} ${OBJECTDIR}/_ext/1891070335/drv_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1891070335/drv_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1891070335/drv_usart.o.d" -o ${OBJECTDIR}/_ext/1891070335/drv_usart.o ../src/config/FFT/driver/usart/src/drv_usart.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/961138470/plib_adchs.o: ../src/config/FFT/peripheral/adchs/plib_adchs.c  .generated_files/flags/FFT/2b03d387936accb7f8f8ef99ac677358ae26acd7 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/961138470" 
	@${RM} ${OBJECTDIR}/_ext/961138470/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/961138470/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/961138470/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/961138470/plib_adchs.o ../src/config/FFT/peripheral/adchs/plib_adchs.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317431971/plib_clk.o: ../src/config/FFT/peripheral/clk/plib_clk.c  .generated_files/flags/FFT/899a616099721535dfaed6464a9e9b816ee486eb .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1317431971" 
	@${RM} ${OBJECTDIR}/_ext/1317431971/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317431971/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317431971/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1317431971/plib_clk.o ../src/config/FFT/peripheral/clk/plib_clk.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109351088/plib_evic.o: ../src/config/FFT/peripheral/evic/plib_evic.c  .generated_files/flags/FFT/ecc626d561ca8b0628cee0c645ef3a33a1777cb6 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109351088" 
	@${RM} ${OBJECTDIR}/_ext/2109351088/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109351088/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109351088/plib_evic.o.d" -o ${OBJECTDIR}/_ext/2109351088/plib_evic.o ../src/config/FFT/peripheral/evic/plib_evic.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109404916/plib_gpio.o: ../src/config/FFT/peripheral/gpio/plib_gpio.c  .generated_files/flags/FFT/c9e2907cb8cd8818d3fc86e8443626a074c6595e .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109404916" 
	@${RM} ${OBJECTDIR}/_ext/2109404916/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109404916/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109404916/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/2109404916/plib_gpio.o ../src/config/FFT/peripheral/gpio/plib_gpio.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp6.c  .generated_files/flags/FFT/6ce932200453b026718a1a197299583f71101038 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp6.o ../src/config/FFT/peripheral/ocmp/plib_ocmp6.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp4.c  .generated_files/flags/FFT/84de8bb1e4502d09d579312b4302bc35a6dda499 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp4.o ../src/config/FFT/peripheral/ocmp/plib_ocmp4.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp2.c  .generated_files/flags/FFT/cb0de1f610f2457ddf3f47129013db9610ca3927 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp2.o ../src/config/FFT/peripheral/ocmp/plib_ocmp2.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o: ../src/config/FFT/peripheral/ocmp/plib_ocmp3.c  .generated_files/flags/FFT/9abb40651f68eac41cef1682479cec2c84185403 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109630876" 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/2109630876/plib_ocmp3.o ../src/config/FFT/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317415596/plib_tmr2.o: ../src/config/FFT/peripheral/tmr/plib_tmr2.c  .generated_files/flags/FFT/5a948b68eded888ee01afe5ba722eeb0d5cbd2ae .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1317415596" 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317415596/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/1317415596/plib_tmr2.o ../src/config/FFT/peripheral/tmr/plib_tmr2.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317415596/plib_tmr3.o: ../src/config/FFT/peripheral/tmr/plib_tmr3.c  .generated_files/flags/FFT/526d8f40f8d220011abcbcaff2e43b336264a382 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1317415596" 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317415596/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/1317415596/plib_tmr3.o ../src/config/FFT/peripheral/tmr/plib_tmr3.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2109807859/plib_uart1.o: ../src/config/FFT/peripheral/uart/plib_uart1.c  .generated_files/flags/FFT/dbd67e38f8b042086590412575921fb7f775331 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/2109807859" 
	@${RM} ${OBJECTDIR}/_ext/2109807859/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2109807859/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2109807859/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/2109807859/plib_uart1.o ../src/config/FFT/peripheral/uart/plib_uart1.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/489647995/xc32_monitor.o: ../src/config/FFT/stdio/xc32_monitor.c  .generated_files/flags/FFT/8a52bd8cc294f3ec31dee7e6e5d86b845c1ce073 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/489647995" 
	@${RM} ${OBJECTDIR}/_ext/489647995/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/489647995/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/489647995/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/489647995/xc32_monitor.o ../src/config/FFT/stdio/xc32_monitor.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/980732774/sys_dma.o: ../src/config/FFT/system/dma/sys_dma.c  .generated_files/flags/FFT/a85dd79cacee7b42365aff393a7887907292fea3 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/980732774" 
	@${RM} ${OBJECTDIR}/_ext/980732774/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/980732774/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/980732774/sys_dma.o.d" -o ${OBJECTDIR}/_ext/980732774/sys_dma.o ../src/config/FFT/system/dma/sys_dma.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1272119167/initialization.o: ../src/config/FFT/initialization.c  .generated_files/flags/FFT/d30b6edc23931df6cee49f5371a3cac742148b52 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1272119167/initialization.o.d" -o ${OBJECTDIR}/_ext/1272119167/initialization.o ../src/config/FFT/initialization.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1272119167/interrupts.o: ../src/config/FFT/interrupts.c  .generated_files/flags/FFT/ee73add280b07c330c356cd87a2c50741cb83ee1 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1272119167/interrupts.o.d" -o ${OBJECTDIR}/_ext/1272119167/interrupts.o ../src/config/FFT/interrupts.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1272119167/exceptions.o: ../src/config/FFT/exceptions.c  .generated_files/flags/FFT/c7716b82cb6321dee0cc4e9e12968264f56fc176 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1272119167/exceptions.o.d" -o ${OBJECTDIR}/_ext/1272119167/exceptions.o ../src/config/FFT/exceptions.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1272119167/tasks.o: ../src/config/FFT/tasks.c  .generated_files/flags/FFT/c49e78d5ae9778a9b45e5cd8a6ca3faa612c2f57 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1272119167" 
	@${RM} ${OBJECTDIR}/_ext/1272119167/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1272119167/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1272119167/tasks.o.d" -o ${OBJECTDIR}/_ext/1272119167/tasks.o ../src/config/FFT/tasks.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/neopixel.o: ../src/neopixel.c  .generated_files/flags/FFT/64f883d0f831149362a7d38810e91f26ab47ef37 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/neopixel.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/neopixel.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/neopixel.o.d" -o ${OBJECTDIR}/_ext/1360937237/neopixel.o ../src/neopixel.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/FFT.o: ../src/FFT.c  .generated_files/flags/FFT/3bdef864e2c792d99107c0e7148ac59ce8722b8d .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/FFT.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/FFT.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/FFT.o.d" -o ${OBJECTDIR}/_ext/1360937237/FFT.o ../src/FFT.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/ADCGather.o: ../src/ADCGather.c  .generated_files/flags/FFT/bbe7b93169c468089226d7e10f4facab9365dcd7 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ADCGather.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ADCGather.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/ADCGather.o.d" -o ${OBJECTDIR}/_ext/1360937237/ADCGather.o ../src/ADCGather.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/UART.o: ../src/UART.c  .generated_files/flags/FFT/a889fbd450e0c0482304c2f635bdcfbc44dfcbea .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/UART.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/UART.o.d" -o ${OBJECTDIR}/_ext/1360937237/UART.o ../src/UART.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/FFT/ebbddf563a8f11c3cfbd38108958fdf2a792fe5b .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/FFT/bb014c1d5398310ba2737d6be9e523215b2f35e4 .generated_files/flags/FFT/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/FFT" -I"../src/packs/PIC32MZ2048EFG100_DFP" -I"../src/mips" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/FFT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/FFT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/FFT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/FFT.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_FFT=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/FFT.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
