# MD5: 1ae355e0c7e47a36bf3f4bd3e0e5b057
ifeq ($(lphy_porting),true)
CFG_XTENSA_CORE              :=Boston_NX_SWUP
CFG_XTENSA_SYSTEM            :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/builds/RH-2016.1.2-linux/$(CFG_XTENSA_CORE)/config
CFG_TENSILICA_BUILDS         :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/builds/RH-2016.1.2-linux
CFG_TENSILICA_TOOLS          :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/tools/RH-2016.1.2-linux
CFG_TENSILICA_BUILDS_HIFI    :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/builds/RH-2016.1.2-linux
CFG_TENSILICA_TOOLS_HIFI     :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/tools/RH-2016.1.2-linux
else
CFG_XTENSA_CORE              :=Boston_NX_SWUP
CFG_XTENSA_SYSTEM            :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/builds/RH-2017.2-linux/$(CFG_XTENSA_CORE)/config
CFG_TENSILICA_BUILDS         :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/builds/RH-2017.2-linux
CFG_TENSILICA_TOOLS          :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/tools/RH-2017.2-linux
CFG_TENSILICA_BUILDS_HIFI    :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/builds/RH-2017.2-linux
CFG_TENSILICA_TOOLS_HIFI     :=$(ROOT_XTENSA_PATH_W)/XtDevTools/install/tools/RH-2017.2-linux
endif
LD_SCRIPT_PATH               :=modem/phy/lt/Tensilica_LSP/BBE16_V7R6_LSP
LD_SCRIPT_NAME               :=mainlsp
LPHY_XTENSA_RULES            :=cc_tensilica5.0.5_rules_boston.mk
ifeq ($(LPHY_LATE_MODE),FEATURE_ON)
CFG_XTENSA_PREDICT_BUG       := NO
CFG_XTENSA_INST_PREFETCH_BUG := YES
CFG_LPHY_DDR_HAVE_DMSS       := NO
CFG_PHY_EXTERN_BOOT          := NO
CFG_LPHY_DTCM_BASE           :=0xE3400000
CFG_LPHY_ITCM_BASE           :=0xE3500000
CFG_LPHY_DTCM_SIZE           :=0x80000
CFG_LPHY_ITCM_SIZE           :=0x80000
CFG_LPHY_L2M_BASE            :=0xE36C0000
CFG_LPHY_L2M_SIZE            :=0xC0000
CFG_LPHY_L2C_BASE            :=0xE3780000
CFG_LPHY_L2C_SIZE            :=0x80000
else
CFG_XTENSA_PREDICT_BUG       := YES
CFG_XTENSA_INST_PREFETCH_BUG := YES
CFG_LPHY_DDR_HAVE_DMSS       := NO
CFG_PHY_EXTERN_BOOT          := YES
CFG_LPHY_DTCM_BASE           :=0xE3400000
CFG_LPHY_ITCM_BASE           :=0xE3500000
CFG_LPHY_DTCM_SIZE           :=0x80000
CFG_LPHY_ITCM_SIZE           :=0x80000
CFG_LPHY_L2M_BASE            :=0xE36C0000
CFG_LPHY_L2M_SIZE            :=0xC0000
CFG_LPHY_L2C_BASE            :=0xE3780000
CFG_LPHY_L2C_SIZE            :=0x80000
endif
CFG_LPHY_SRAM_BASE           :=0x0
CFG_LPHY_SRAM_SIZE           :=0x0
CFG_LPHY_DDR_BASE            :=$(CFG_DDR_TLPHY_IMAGE_ADDR)+0x10000
CFG_LPHY_DDR_SIZE            :=0x200000
CFG_LPHY_TOTAL_IMG_SIZE                :=((LPHY_DTCM_SIZE)+(LPHY_ITCM_SIZE)+(LPHY_L2M_SIZE)+(LPHY_DDR_SIZE))
CFG_TL_PHY_ASIC        := YES
CFG_TL_PHY_V760        := YES
CFG_TL_PHY_HI3670               := YES
CFG_TL_PHY_BBE16_CACHE          := NO
CFG_TL_PHY_SUPPORT_DUAL_MODEM   := YES
CFG_TL_PHY_SUPPORT_IMAGE_HEADER := YES
CFG_FEATURE_LTE_4RX             := FEATURE_OFF
CFG_FEATURE_LTE_8RX             := FEATURE_OFF
CFG_BBPCONFIG_VERIOSN          := bbp_config_hi6960
CFG_TL_PHY_FEATURE_LTE_LCS      := NO
CFG_FEATURE_TLPHY_SINGLE_XO     := YES
CFG_MULTI_PHY_CO_PROCESSOR     := NO
CFG_MULTI_PHY_CO_PROCEDURE     := YES
ifeq ($(CHIP_TYPE_CS),FEATURE_ON)
CFG_FEATURE_TLPHY_ET                    := FEATURE_ON
CFG_FEATURE_TLPHY_DPD                   := FEATURE_ON
CFG_FEATURE_TLPHY_DPD_OPT               := FEATURE_OFF
else
CFG_FEATURE_TLPHY_ET                    := FEATURE_ON
CFG_FEATURE_TLPHY_DPD                   := FEATURE_OFF
CFG_FEATURE_TLPHY_DPD_OPT               := FEATURE_OFF
endif
CFG_FEATURE_TLPHY_ETM_ONLY              := FEATURE_OFF
CFG_FEATURE_TLPHY_NEWET                 := FEATURE_OFF
CFG_TL_PHY_FEATURE_SCELL_USE_LISTEN     := YES
CFG_TLPHY_DSDS_OPTIMIZE_ENABLE              := YES
CFG_FEATURE_TLPHY_WTC_SWTICH                := FEATURE_ON
CFG_FEATURE_TLPHY_ANT_BLANK            := FEATURE_OFF
