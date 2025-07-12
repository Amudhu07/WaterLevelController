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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/WaterLevelController_XC8.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/WaterLevelController_XC8.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=WaterLevelController.X/src/adc.c WaterLevelController.X/src/eeprom_utils.c WaterLevelController.X/src/i2c.c WaterLevelController.X/src/lcd.c WaterLevelController.X/src/main.c WaterLevelController.X/src/menu.c WaterLevelController.X/src/motor_control.c WaterLevelController.X/src/rtc_ds1307.c WaterLevelController.X/src/sensors.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/WaterLevelController.X/src/adc.p1 ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1 ${OBJECTDIR}/WaterLevelController.X/src/i2c.p1 ${OBJECTDIR}/WaterLevelController.X/src/lcd.p1 ${OBJECTDIR}/WaterLevelController.X/src/main.p1 ${OBJECTDIR}/WaterLevelController.X/src/menu.p1 ${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1 ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1 ${OBJECTDIR}/WaterLevelController.X/src/sensors.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/WaterLevelController.X/src/adc.p1.d ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1.d ${OBJECTDIR}/WaterLevelController.X/src/i2c.p1.d ${OBJECTDIR}/WaterLevelController.X/src/lcd.p1.d ${OBJECTDIR}/WaterLevelController.X/src/main.p1.d ${OBJECTDIR}/WaterLevelController.X/src/menu.p1.d ${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1.d ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1.d ${OBJECTDIR}/WaterLevelController.X/src/sensors.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/WaterLevelController.X/src/adc.p1 ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1 ${OBJECTDIR}/WaterLevelController.X/src/i2c.p1 ${OBJECTDIR}/WaterLevelController.X/src/lcd.p1 ${OBJECTDIR}/WaterLevelController.X/src/main.p1 ${OBJECTDIR}/WaterLevelController.X/src/menu.p1 ${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1 ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1 ${OBJECTDIR}/WaterLevelController.X/src/sensors.p1

# Source Files
SOURCEFILES=WaterLevelController.X/src/adc.c WaterLevelController.X/src/eeprom_utils.c WaterLevelController.X/src/i2c.c WaterLevelController.X/src/lcd.c WaterLevelController.X/src/main.c WaterLevelController.X/src/menu.c WaterLevelController.X/src/motor_control.c WaterLevelController.X/src/rtc_ds1307.c WaterLevelController.X/src/sensors.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/WaterLevelController_XC8.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4520
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/WaterLevelController.X/src/adc.p1: WaterLevelController.X/src/adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/adc.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/adc.p1 WaterLevelController.X/src/adc.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/adc.d ${OBJECTDIR}/WaterLevelController.X/src/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1: WaterLevelController.X/src/eeprom_utils.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1 WaterLevelController.X/src/eeprom_utils.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.d ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/i2c.p1: WaterLevelController.X/src/i2c.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/i2c.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/i2c.p1 WaterLevelController.X/src/i2c.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/i2c.d ${OBJECTDIR}/WaterLevelController.X/src/i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/lcd.p1: WaterLevelController.X/src/lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/lcd.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/lcd.p1 WaterLevelController.X/src/lcd.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/lcd.d ${OBJECTDIR}/WaterLevelController.X/src/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/main.p1: WaterLevelController.X/src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/main.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/main.p1 WaterLevelController.X/src/main.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/main.d ${OBJECTDIR}/WaterLevelController.X/src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/menu.p1: WaterLevelController.X/src/menu.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/menu.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/menu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/menu.p1 WaterLevelController.X/src/menu.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/menu.d ${OBJECTDIR}/WaterLevelController.X/src/menu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/menu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1: WaterLevelController.X/src/motor_control.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1 WaterLevelController.X/src/motor_control.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/motor_control.d ${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1: WaterLevelController.X/src/rtc_ds1307.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1 WaterLevelController.X/src/rtc_ds1307.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.d ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/sensors.p1: WaterLevelController.X/src/sensors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/sensors.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/sensors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/sensors.p1 WaterLevelController.X/src/sensors.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/sensors.d ${OBJECTDIR}/WaterLevelController.X/src/sensors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/sensors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/WaterLevelController.X/src/adc.p1: WaterLevelController.X/src/adc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/adc.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/adc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/adc.p1 WaterLevelController.X/src/adc.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/adc.d ${OBJECTDIR}/WaterLevelController.X/src/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1: WaterLevelController.X/src/eeprom_utils.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1 WaterLevelController.X/src/eeprom_utils.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.d ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/eeprom_utils.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/i2c.p1: WaterLevelController.X/src/i2c.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/i2c.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/i2c.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/i2c.p1 WaterLevelController.X/src/i2c.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/i2c.d ${OBJECTDIR}/WaterLevelController.X/src/i2c.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/i2c.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/lcd.p1: WaterLevelController.X/src/lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/lcd.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/lcd.p1 WaterLevelController.X/src/lcd.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/lcd.d ${OBJECTDIR}/WaterLevelController.X/src/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/main.p1: WaterLevelController.X/src/main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/main.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/main.p1 WaterLevelController.X/src/main.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/main.d ${OBJECTDIR}/WaterLevelController.X/src/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/menu.p1: WaterLevelController.X/src/menu.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/menu.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/menu.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/menu.p1 WaterLevelController.X/src/menu.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/menu.d ${OBJECTDIR}/WaterLevelController.X/src/menu.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/menu.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1: WaterLevelController.X/src/motor_control.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1 WaterLevelController.X/src/motor_control.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/motor_control.d ${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/motor_control.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1: WaterLevelController.X/src/rtc_ds1307.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1 WaterLevelController.X/src/rtc_ds1307.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.d ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/rtc_ds1307.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/WaterLevelController.X/src/sensors.p1: WaterLevelController.X/src/sensors.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/WaterLevelController.X/src" 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/sensors.p1.d 
	@${RM} ${OBJECTDIR}/WaterLevelController.X/src/sensors.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/WaterLevelController.X/src/sensors.p1 WaterLevelController.X/src/sensors.c 
	@-${MV} ${OBJECTDIR}/WaterLevelController.X/src/sensors.d ${OBJECTDIR}/WaterLevelController.X/src/sensors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/WaterLevelController.X/src/sensors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

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
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/WaterLevelController_XC8.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/WaterLevelController_XC8.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=pickit3  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -mrom=default,-7dc0-7fff -mram=default,-5f4-5ff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/WaterLevelController_XC8.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/WaterLevelController_XC8.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/WaterLevelController_XC8.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/WaterLevelController_XC8.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/WaterLevelController_XC8.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
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

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
