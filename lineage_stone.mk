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

# Inherit from stone device
$(call inherit-product, device/xiaomi/stone/device.mk)

# Device props
TARGET_ENABLE_BLUR := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DISABLE_EPPE := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
EVO_BUILD_TYPE := Official
ARGET_BUILD_APERTURE_CAMERA := false
WITH_GMS := true

# Dolby
Vendor_Dolby := true

PRODUCT_NAME := lineage_stone
PRODUCT_DEVICE := stone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi

BUILD_FINGERPRINT := POCO/moonstone_p_global/moonstone:14/UKQ1.231003.002/V816.0.3.0.UMPMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
