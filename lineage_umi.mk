#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from umi device
$(call inherit-product, device/xiaomi/umi/device.mk)

# Extra Packages
$(call inherit-product, vendor/xiaomi/camera/miuicamera.mk) # HolyBear Leica camera

# Include Vendor Keys
include vendor/evolution-priv/keys/keys.mk

# Extra Tags
EVO_BUILD_TYPE 	        := COMMUNITY
TARGET_USES_MIUI_DOLBY  := true
TARGET_HAS_UDFPS        := true
WITH_GAPPS              := true
BUILD_BCR               := true

# Device Details
PRODUCT_NAME            := evolution_umi
PRODUCT_DEVICE          := umi
PRODUCT_MANUFACTURER    := Xiaomi
PRODUCT_BRAND           := Xiaomi
PRODUCT_MODEL           := Mi 10

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="umi-user 13 TKQ1.221114.001 V816.0.5.0.TJBCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/umi_global/umi:13/TKQ1.221114.001/V816.0.5.0.TJBCNXM:user/release-keys
