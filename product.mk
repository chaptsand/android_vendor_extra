#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Google Apps
ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)

# ih8sn
PRODUCT_PACKAGES += ih8sn

PRODUCT_COPY_FILES += \
    vendor/extra/configs/ih8sn/ih8sn_umi.conf:/system/etc/ih8sn.conf

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/bin/ih8sn \
    system/etc/ih8sn.conf \
    system/etc/init/ih8sn.rc

endif

# Fonts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/extra/prebuilts/fonts/,$(TARGET_COPY_OUT_PRODUCT)/fonts)

PRODUCT_PACKAGES += \
    FontGoogleSansOverlay
