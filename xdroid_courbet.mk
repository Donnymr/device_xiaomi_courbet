#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from courbet device
$(call inherit-product, device/xiaomi/courbet/device.mk)

# Inherit some common xdroidsp stuff.
$(call inherit-product, vendor/xdroid/config/common.mk)
XDROID_BOOT := 1080
XDROID_MAINTAINER := DonnyMrizky
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_NAME := xdroid_courbet
PRODUCT_DEVICE := courbet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 11 Lite 4G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="courbet_global-user 12 RKQ1.210614.002 V13.0.7.0.SKQMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/courbet_global/courbet:12/RKQ1.210614.002/V13.0.7.0.SKQMIXM:user/release-keys
