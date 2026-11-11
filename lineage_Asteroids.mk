#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Asteroids device
$(call inherit-product, device/nothing/Asteroids/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_Asteroids
PRODUCT_DEVICE := Asteroids
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A059
PRODUCT_MANUFACTURER := Nothing

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Nothing/Asteroids/Asteroids:17/CQ2A.260522.002-CP2A.260605.016/2610232146:user/release-keys \
    DeviceProduct=Asteroids
