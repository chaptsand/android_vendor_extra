#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Google Apps
ifeq ($(WITH_GMS), true)
$(call inherit-product, vendor/gms/products/gms.mk)
endif
