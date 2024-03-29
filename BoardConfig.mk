# Copyright (C) 2014 The CyanogenMod Project
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

# Inherit from msm8226-common
-include device/samsung/msm8226-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := s3ve3g,s3ve3gds,s3ve3gjv

LOCAL_PATH := device/samsung/s3ve3g

# VK Wifi
#WIFI_DRIVER_MODULE_PATH := 

# VK Bionic
MALLOC_SVELTE := true
#TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS :=
#LIBART_IMG_BASE :=

# VK RIL
BOARD_PROVIDES_LIBRIL := true
#BOARD_MODEM_TYPE := 
TARGET_SPECIFIC_HEADER_PATH += device/samsung/msm8226-common/include
#BOARD_GLOBAL_CFLAGS += 
#BOARD_RIL_CLASS := device/samsung/msm8226-common/ril/

# VK Graphics
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := false

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/s3ve3g/bluetooth

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/s3ve3g/mkbootimg.mk
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=null androidboot.console=null androidboot.bootdevice=msm_sdcc.1 androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x37 androidboot.selinux=permissive vmalloc=400M
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
TARGET_KERNEL_SOURCE := kernel/samsung/s3ve3g
TARGET_KERNEL_CONFIG := cyanogenmod_s3ve3g_defconfig

# VK Cache
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

# VK Recovery
TARGET_RECOVERY_FSTAB := device/samsung/s3ve3g/rootdir/fstab.qcom
TARGET_RECOVERY_DENSITY := xhdpi
ARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
RECOVERY_FSTAB_VERSION := $(LOCAL_PATH)/rootdir/fstab.qcom

# VK PowerHAL
TARGET_POWERHAL_VARIANT := qcom

# VK Selinux
#BOARD_SEPOLICY_DIRS += \
#	device/samsung/s3ve3g/selinux
# VK assert 
#TARGET_OTA_ASSERT_DEVICE :=

# Audio
#AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
#AUDIO_FEATURE_SAMSUNG_DUAL_SIM := true

# Init
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_s3ve3g.c
TARGET_UNIFIED_DEVICE := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Partitions
BOARD_CACHEIMAGE_PARTITION_SIZE := 721420288
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 11370585
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2097152000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12562627584

# Recovery
#TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/fstab.qcom

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/s3ve3g

# Optimization
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := false
