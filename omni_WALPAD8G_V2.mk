#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from WALPAD8G_V2 device
$(call inherit-product, device/walton/WALPAD8G_V2/device.mk)

PRODUCT_DEVICE := WALPAD8G_V2
PRODUCT_NAME := omni_WALPAD8G_V2
PRODUCT_BRAND := WALTON
PRODUCT_MODEL := WALPAD_8G
PRODUCT_MANUFACTURER := walton

PRODUCT_GMS_CLIENTID_BASE := android-walton

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_t805_e221_v1_hd-user 11 RP1A.200720.011 mp1V8323 release-keys"

BUILD_FINGERPRINT := WALTON/WALPAD8G_V2/WALPAD8G_V2:11/RP1A.200720.011/mp1V970:user/release-keys
