# NOTE:
# Don't use '-' or blank spaces in flag values!
# These will create build errors or other bugs in recovery (Excluding SHRP_PATH,SHRP_REC).
#
# NOTE-2:
# all values within these brackets: "<" ">" showing choice values and need to be
# replaced by you with the correct values!
# Example: if the codename of your device is "gtexslte" <device-codename> becomes:
# SHRP_DEVICE_CODE := gtexslte
# (so without any brackets ofc!)

################### ############################################
# MANDATORY FLAGS # These flags HAVE TO be set/changed by you! #
################### ############################################

# Device codename
# Default (if not set): N/A
SHRP_DEVICE_CODE := gta4lwifi

# Path of your SHRP device tree
# Replace <device-brand> with the device brand name
# (SHRP_DEVICE_CODE will expand to the above variable so check if that is correct)
SHRP_PATH := device/samsung/$(SHRP_DEVICE_CODE)

# Maintainer name
# Default (if not set): N/A
SHRP_MAINTAINER := ragarcia87

# Recovery Type (for "About" section only)
# Default (if not set): N/A
SHRP_REC_TYPE := SAR

# Device Type (for "About" section only)
# Default (if not set): N/A
SHRP_DEVICE_TYPE := A_Only

# Your device's recovery path, dont use blindly
# No default
SHRP_REC := /dev/block/platform/soc/4744000.sdhci/by-name/recovery

################### ################################################################################
# IMPORTANT FLAGS # These are usually good to check - at least if the defaults are what you expect #
################### ################################################################################

# Emergency DownLoad mode (0 = no EDL mode, 1 = EDL mode available)
# Default (if not set): 0
SHRP_EDL_MODE := 0

# internal storage path
# Default (if not set): /sdcard
SHRP_INTERNAL := /sdcard

# If your device has an external sdcard
# Default (if not set): /
SHRP_EXTERNAL := /external_sd

# USB OTG path
# Default (if not set): /
SHRP_OTG := /usb_otg

# Flashlight: (0 = disable, 1 = enable)
# Default (if not set): 0
SHRP_FLASH := 0

################## #########################################################################
# OPTIONAL FLAGS # Stuff which highly depends on your device and / or personal preferences #
################## #########################################################################

# Use this flag only if your device is A/B.
# Default (if not set) is no A/B device
# Set this variable when true ONLY (do not use "false" or similiar)
#SHRP_AB := true

# SHRP padding flag (for rounded corner devices only)
# You have to change these values according to your device's roundness.
SHRP_STATUSBAR_RIGHT_PADDING := 20
# Default (for LEFT): 20
SHRP_STATUSBAR_LEFT_PADDING := 20

# For notch devices
# Default (if not set) is no notch
# Set this variable when true ONLY (do not use "false" or similiar)
#SHRP_NOTCH := true

# SHRP Express, enables on-the-fly theme patching (also persistent) + persistent lock
# Default (if not set) is not using Express
# Set this variable when true ONLY (do not use "false" or similiar)
SHRP_EXPRESS := true

# SHRP Express use Data save shrp files inside /data instead of /system
# Note - SHRP_EXPRESS must be true to use this flag otherwise it won't work.
# Default (if not set) will use /system if SHRP_EXPRESS true otherwise will use legacy method of patching
# Set this variable when true ONLY (do not use "false" or similiar)
SHRP_EXPRESS_USE_DATA := true

# SHRP Dark mode, use this flag to have dark theme set by default
# Default (if not set) is not using DARK mode
# Set this variable when true ONLY (do not use "false" or similiar)
SHRP_DARK := true

# custom led paths for flashlight
# find yours then replace the examples here
#SHRP_CUSTOM_FLASHLIGHT := true
#SHRP_FONP_1 := /sys/class/leds/led:torch_0/brightness
#SHRP_FONP_2 := /sys/class/leds/led:torch_1/brightness
#SHRP_FONP_3 := /sys/class/leds/led:switch/brightness

# Max brightness of flashlight
# you can also check the above led paths in Android when you turn on flashlight
#SHRP_FLASH_MAX_BRIGHTNESS := 200

# Force mount system in /system despite SAR policy
# useful for maintaining backwards compatibility and/or Samsung devices
# Default (if not set) is to follow the SAR policy
# Set this variable when true ONLY (do not use "false" or similiar)
SHRP_NO_SAR_AUTOMOUNT := true

# Do not include the SHRP theming system
# Useful to save space for devices with a smaller recovery partition
# Default (if not set) is full theming support
# Set this variable when true ONLY (do not use "false" or similiar)
#SHRP_LITE := true

################################## ##############################################
# SHRP DEFAULT ADDONS - OPTIONAL # Default SHRP addon behavior - fully optional #
################################## ##############################################

# SHRP comes with a set of default addons.
# This section allows to disable some or all of them, e.g. to save a little space
# or when a device does not support / need them.

#####
# DEFAULT behavior if neither
# - SHRP_SKIP_DEFAULT_ADDON_X nor
# - INC_IN_REC_ADDON_X
# are set:
# the addon will be added to the build and saved into the internal storage
# on flashing (i.e: $(SHRP_INTERNAL)/SHRP/addons)
#
# SHRP_SKIP_DEFAULT_ADDON_X := true
# --> will not add this addon
#
# INC_IN_REC_ADDON_X := true
# --> will add this addon & store it within the recovery ramdisk (i.e. NOT in the internal storage!)
#
# If SHRP_SKIP_DEFAULT_ADDON_X is set INC_IN_REC_ADDON_X will be ignored!
#
######

# Addon - Substratum Overlay (OMS -Normal- disabler)
# Default (if not set) is not skipping this addon (i.e. add it)
# Ensure you understood the above note on the default behavior!
#SHRP_SKIP_DEFAULT_ADDON_1 := true
# Default (if not set) is NOT adding it to the ramdisk but internal storage.
# To store this addon into the recovery ramdisk instead set to "true" here.
# Ensure you understood the above note on the default behavior!
INC_IN_REC_ADDON_1 := true

# Addon - Substratum Overlay (OMS -legacy- disabler)
# Default (if not set) is not skipping this addon (i.e. add it)
# Ensure you understood the above note on the default behavior!
#SHRP_SKIP_DEFAULT_ADDON_2 := true
# Default (if not set) is NOT adding it to the ramdisk but internal storage.
# To store this addon into the recovery ramdisk instead set to "true" here.
# Ensure you understood the above note on the default behavior!
INC_IN_REC_ADDON_2 := true

# Addon - Clear Fingerprint (remove fingerprint lock from system)
# Default (if not set) is not skipping this addon (i.e. add it)
# Ensure you understood the above note on the default behavior!
#SHRP_SKIP_DEFAULT_ADDON_3 := true
# Default (if not set) is NOT adding it to the ramdisk but internal storage.
# To store this addon into the recovery ramdisk instead set to "true" here.
# Ensure you understood the above note on the default behavior!
INC_IN_REC_ADDON_3 := true

# Addon - Force Encryption (remove force encryption from your device)
# Default (if not set) is not skipping this addon (i.e. add it)
# Ensure you understood the above note on the default behavior!
#SHRP_SKIP_DEFAULT_ADDON_4 := true
# Default (if not set) is NOT adding it to the ramdisk but internal storage.
# To store this addon into the recovery ramdisk instead set to "true" here.
# Ensure you understood the above note on the default behavior!
INC_IN_REC_ADDON_4 := true


# Default (if not set) is NOT adding it to the ramdisk but internal storage.
# To store magisk zip into the recovery ramdisk instead set to "true" here.
# Ensure you understood the above note on the default behavior!
INC_IN_REC_MAGISK := true

# Default (if not set) will show magisk root and unroot option inside the recovery.
# To hide the prebuilt magisk flash option from recovery, set value to "true".
# Ensure you understood the above note on the default behavior!
SHRP_EXCLUDE_MAGISK_FLASH := true

############################ #########################################################
# CUSTOM ADDONS - OPTIONAL # Custom addons! Yea fully optional but.. GREAT STUFF! :) #
############################ #########################################################

# SHRP can be extended as YOU wish! You can add whatever you can think of
# e.g patching a ROM, adding stuff, apps, there is no limit ;)
# Addons will be shown in the "Tweaks" section of SHRP.

# Custom addon folder. Do not forget to put a "/" at the end of the path!
#SHRP_EXTERNAL_ADDON_PATH := "device/<device-brand>/$(SHRP_DEVICE_CODE)/<AddonFolderName>/"

# Addon #1 - Name
SHRP_EXTERNAL_ADDON_1_NAME := "LOS Recorder"
# Addon #1 - Description
SHRP_EXTERNAL_ADDON_1_INFO := "A magisk module which add lineageOS recorder into your system"
# Addon #1 - Addon file name as ZIP (zip format is required)
SHRP_EXTERNAL_ADDON_1_FILENAME := "los_recorder.zip"
# Addon #1 - Free defineable button text the user need to press to actually install that addon
# (Examples: Ok, Install, Flask, Enable, Disable, etc)
SHRP_EXTERNAL_ADDON_1_BTN_TEXT := "Install"
# Addon #1 - Text beeing shown when the installation was successful
SHRP_EXTERNAL_ADDON_1_SUCCESSFUL_TEXT := "Installed"
# Addon #1 - Inject the addon into the recovery (if so: be sure that it will fit into the partition)
# Default (if not set) is NOT adding this addon into the recovery ramdisk. That means:
# If you do NOT set this the addon will be saved into the internal storage (i.e: $(SHRP_INTERNAL)/SHRP/addons)
# Set this variable when true ONLY (do not use "false" or similiar)
SHRP_INC_IN_REC_EXTERNAL_ADDON_1 := true

# As you might already guess from the naming scheme:
# You can add multiple custom addons (max amount is 6)!
#
# just add the above flags again and replace:
# SHRP_EXTERNAL_ADDON_1_XXXX
# with
# SHRP_EXTERNAL_ADDON_2_XXXX for the second addon
# and for the third up to the sixth change it accordingly:
# SHRP_EXTERNAL_ADDON_3_XXXX, SHRP_EXTERNAL_ADDON_4_XXXX, SHRP_EXTERNAL_ADDON_5_XXXX, SHRP_EXTERNAL_ADDON_6_XXXX


#
# Copyright 2021 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

DEVICE_PATH := device/samsung/gta4lwifi

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a9
TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Assert
TARGET_OTA_ASSERT_DEVICE := gta4lwifi

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := SRPTD23A003
BOARD_VENDOR := samsung
TARGET_SOC := bengal
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true

# Dynamic Partitions
BOARD_SUPER_PARTITION_SIZE := 5729419264
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 5725224960
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product odm

# Workaround for error copying vendor files to recovery ramdisk
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

# File systems
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_USERDATAIMAGE_PARTITION_SIZE := 23509056512
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_METADATAIMAGE_PARTITION_SIZE := 16777216
BOARD_DTBOIMG_PARTITION_SIZE := 0x01800000
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x06000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x062C0000

BOARD_USES_PRODUCTIMAGE := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0x4a90000 androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=2048 loop.max_part=7 firmware_class.path=/vendor/firmware_mnt/image androidboot.selinux=permissive buildvariant=eng
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_KERNEL_TAGS_OFFSET := 0x01e00000
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/samsung/gta4lwifi
TARGET_KERNEL_CONFIG := gta4lwifi_defconfig

# Platform
TARGET_BOARD_PLATFORM := bengal
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno610
TARGET_USES_HARDWARE_QCOM_BOOTCTRL := true
QCOM_BOARD_PLATFORMS += bengal

# Extras
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_FLIPPED_SCREEN := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
TARGET_RECOVERY_WIPE := $(DEVICE_PATH)/recovery.wipe
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
TARGET_RECOVERY_DEVICE_MODULES += \
    libandroidicu \
    libcap \
    libion \
    libxml2

# Encryption
BOARD_USES_METADATA_PARTITION := true
BOARD_USES_QCOM_FBE_DECRYPTION := true
PLATFORM_VERSION := 127
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
PLATFORM_SECURITY_PATCH := 2127-12-31
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# Crypto
TW_INCLUDE_CRYPTO := true

# TWRP Configuration
TW_DEVICE_VERSION := 1
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_USE_NEW_MINADBD := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_REPACKTOOLS := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_NO_BIND_SYSTEM := true
TW_NO_EXFAT := false
TW_NO_EXFAT_FUSE := false
TW_NO_LEGACY_PROPS := true
TW_NO_HAPTICS := true
TW_OVERRIDE_SYSTEM_PROPS := \
    "ro.build.date.utc;ro.build.product;ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental;ro.product.device=ro.product.system.device;ro.product.model=ro.product.system.model;ro.product.name=ro.product.system.name"
RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libcap.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libxml2.so
    
# TWRP Debug Flags
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TARGET_RECOVERY_DEVICE_MODULES += debuggerd
RECOVERY_BINARY_SOURCE_FILES += $(TARGET_OUT_EXECUTABLES)/debuggerd
TARGET_RECOVERY_DEVICE_MODULES += strace
RECOVERY_BINARY_SOURCE_FILES += $(TARGET_OUT_EXECUTABLES)/strace
