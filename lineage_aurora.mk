#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from aurora device
$(call inherit-product, device/sony/aurora/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Setup keystore
-include vendor/lineage-priv/keys/keys.mk

PRODUCT_NAME := lineage_aurora
PRODUCT_DEVICE := aurora
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia XZ2 Premium

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_ENABLE_BLUR := true
TARGET_DISABLE_EPPE := true

TARGET_INCLUDE_AXFX := true
TARGET_INCLUDES_LOS_PREBUILTS := true

PRODUCT_NO_CAMERA := false

PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true

AXION_CAMERA_REAR_INFO := 19,12
AXION_CAMERA_FRONT_INFO := 13
AXION_MAINTAINER := Ivy
AXION_PROCESSOR := Snapdragon_845

PRODUCT_GMS_CLIENTID_BASE := android-sony-mobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="H8166-user 10 52.1.A.3.49 052001A003004902006556692 release-keys" \
    BuildFingerprint=Sony/H8166/H8166:10/52.1.A.3.49/052001A003004902006556692:user/release-keys
