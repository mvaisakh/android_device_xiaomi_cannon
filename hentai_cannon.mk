#
# Copyright 2021 mvaisakh
#
# SPDX-License-Identifer: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)

# Disable GApps for bringup
TARGET_DOES_NOT_USE_GAPPS := true

# Inherit hentai common configuration
$(call inherit-product, vendor/hentai/build/product/hentai_product.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/cannon/cannon.mk)

# Target specifications
PRODUCT_NAME := hentai_cannon
PRODUCT_DEVICE := cannon
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 9T
PRODUCT_MANUFACTURER := xiaomi
