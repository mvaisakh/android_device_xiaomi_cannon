#
# Copyright 2021 mvaisakh
#
# SPDX-License-Identifer: Apache-2.0

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/xiaomi/cannon/cannon-vendor.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0