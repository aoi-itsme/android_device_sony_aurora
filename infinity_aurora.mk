#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from aurora device
$(call inherit-product, device/sony/aurora/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Setup keystore
-include vendor/lineage-priv/keys/keys.mk

PRODUCT_NAME := infinity_aurora
PRODUCT_DEVICE := aurora
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia XZ2 Premium

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_BLUR := true
TARGET_ENABLE_BLUR := true
TARGET_DISABLE_EPPE := true

INFINITY_MAINTAINER := Aoitsme
WITH_GAPPS := false
PRODUCT_NO_CAMERA := false

PRODUCT_GMS_CLIENTID_BASE := android-sony-mobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="H8166-user 10 52.1.A.3.49 052001A003004902006556692 release-keys" \
    BuildFingerprint=Sony/H8166/H8166:10/52.1.A.3.49/052001A003004902006556692:user/release-keys
