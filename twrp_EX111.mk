#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from EX111 device.
$(call inherit-product, device/dexp/EX111/device.mk)

PRODUCT_DEVICE := EX111
PRODUCT_NAME := twrp_EX111
PRODUCT_BRAND := DEXP
PRODUCT_MODEL := EX111
PRODUCT_MANUFACTURER := DEXP

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=EX111 \
    PRODUCT_NAME=EX111 \
    PRIVATE_BUILD_DESC="s9863a1h10__s1161h_2g-user 10 QP1A.190711.020 48403 release-keys"

BUILD_FINGERPRINT := DEXP/EX111/EX111:10/QP1A.190711.020/33586:user/release-keys
