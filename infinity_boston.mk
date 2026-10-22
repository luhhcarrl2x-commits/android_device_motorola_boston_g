
#
# Copyright (C) 2026 The Infinity X Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from Android.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the Boston device.
$(call inherit-product, device/motorola/boston/device.mk)

# Inherit common Project Infinity X configuration.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Device identity.
PRODUCT_NAME := infinity_boston
PRODUCT_DEVICE := boston
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g stylus 5G - 2024

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Preserve the device's existing factory build identity.
PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct="boston_g" \
    BuildDesc="boston_g-user 15 V1UBS35H.97-24-16 551d6-ff860 release-keys" \
    BuildFingerprint="motorola/boston_g/boston:15/V1UBS35H.97-24-16/551d6-ff860:user/release-keys"
