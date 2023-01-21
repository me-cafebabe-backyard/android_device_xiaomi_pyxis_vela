#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from pyxis_vela device
$(call inherit-product, device/xiaomi/pyxis_vela/device.mk)

PRODUCT_NAME := lineage_pyxis_vela
PRODUCT_DEVICE := pyxis_vela
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9 Lite / MI CC 9 Meitu Edition

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pyxis-user 11 RKQ1.200826.002 V12.5.2.0.RFCMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/pyxis/pyxis:11/RKQ1.200826.002/V12.5.2.0.RFCMIXM:user/release-keys
