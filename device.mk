#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/dexp/EX111

# Dynamic partition stuff
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 29

# API
PRODUCT_SHIPPING_API_LEVEL := 29

# add vndk version
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.vndk.version = 1

# fs doesn't have HEH filename encryption
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.volume.filenames_mode=aes-256-cts

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.controller=musb-hdrc.0.auto

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-service \
    android.hardware.health@1.0-impl

# Fastbootd and Fastboot HAL
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

# Add for android  gatekeeper HDIL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0-impl \
    gatekeeper.default

PRODUCT_PACKAGES += \
    gatekeeperd \
    libkeystore \
    libgatekeeper \

PRODUCT_PACKAGES += \
    libtrusty \
    libteeproduction

PRODUCT_PACKAGES += \
    sprdstorageproxyd \
    rpmbserver

# add for check keymaster & widevine keybox lib
PRODUCT_PACKAGES += libcheckkeybox