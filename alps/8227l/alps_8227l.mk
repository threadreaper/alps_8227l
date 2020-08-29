#
# Copyright (C) 2018 The Android Open Source Project
# Copyright (C) 2018 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

GAPPS_VARIANT := mini

# Inherit core Android stuff, and specify that this is an Android Go build
$(call inherit-product, build/target/product/core_minimal.mk)
$(call inherit-product, build/target/product/go_defaults_common.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
	
# These pre-installed apps might be important
PRODUCT_PACKAGES += \
	AutoTest \
	Bluetooth \
	EngineerMode \
	FMRadio \
	XyautoSettings \
	Backcar \
	BrakeCheck \
	EngManual \
	MTKLogger \
	YGPS

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := 8227l
PRODUCT_NAME := alps_8227l
PRODUCT_MODEL := Alps 8227L
PRODUCT_MANUFACTURER := alps
PRODUCT_RELEASE_NAME := Alps 8227L
