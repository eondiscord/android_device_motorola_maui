#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AOSP stuff, maybe itll actually work.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit from maui device
$(call inherit-product, device/motorola/maui/device.mk)

PRODUCT_DEVICE := maui
PRODUCT_NAME := aosp_maui
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g play - 2023
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="maui_retail-user 12 S3SGS32.39-181-7 4c8add release-keys"

BUILD_FINGERPRINT := motorola/maui_retail/maui:12/S3SGS32.39-181-7/4c8add:user/release-keys
