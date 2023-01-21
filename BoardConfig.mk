#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm710-common
include device/xiaomi/sdm710-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/pyxis_vela

BUILD_BROKEN_DUP_RULES := true

# Asserts
TARGET_OTA_ASSERT_DEVICE := pyxis_vela,pyxis,vela

# Audio
TARGET_PROVIDES_AUDIO_EXTNS := true

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_CONFIG += xiaomi/pyxis_vela.config

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 134217728

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Inherit from the proprietary version
include vendor/xiaomi/pyxis_vela/BoardConfigVendor.mk
