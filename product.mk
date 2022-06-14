#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Camera
PRODUCT_PACKAGES += \
    GoogleCameraGo

# Set compiler filter "verify" and disable AOT-compilation in dexpreopt
RELAX_USES_LIBRARY_CHECK := true

# Fonts
PRODUCT_PACKAGES += \
    LXGWZhenKai.ttf

# Fonts Overlays
PRODUCT_PACKAGES += \
    FontLXGWZhenKaiOverlay

# Google Apps
ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gms/products/gms.mk)
$(call inherit-product, packages/overlays/ThemeIcons/config.mk)

# ih8sn
PRODUCT_PACKAGES += ih8sn

PRODUCT_COPY_FILES += \
    vendor/extra/configs/ih8sn/ih8sn_umi.conf:/system/etc/ih8sn.conf

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/bin/ih8sn \
    system/etc/ih8sn.conf \
    system/etc/init/ih8sn.rc

endif

# Translations
PRODUCT_PACKAGE_OVERLAYS += vendor/translations/overlay
