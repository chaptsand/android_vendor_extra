#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

fonts_customization := $(TARGET_OUT_PRODUCT)/etc/fonts_customization.xml
fonts_customization_extra_dummy := $(TARGET_OUT_PRODUCT)/etc/fonts_customization_extra.dummy.xml

$(fonts_customization_extra_dummy): $(fonts_customization)
	sed -i 's|</fonts-modification>||' $(fonts_customization)
	cat vendor/extra/fonts/fonts_extra.xml >> $(fonts_customization)
	echo "</fonts-modification>" >> $(fonts_customization)

ALL_DEFAULT_INSTALLED_MODULES += $(fonts_customization_extra_dummy)
