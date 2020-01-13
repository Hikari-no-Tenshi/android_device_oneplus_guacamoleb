#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product-if-exists, vendor/oneplus/guacamoleb/guacamoleb-vendor.mk)

$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Vendor properties
-include $(LOCAL_PATH)/vendor_props.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom

# tri-state key
PRODUCT_PACKAGES += \
    tri-state-key-calibrate_daemon
