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

# Specify phone tech before including full_phone
# $(call inherit-product, vendor/omni/config/gsm.mk)
$(call inherit-product, build/target/product/core_minimal.mk)
$(call inherit-product, build/target/product/go_defaults_common.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

# Inherit Telephony packages
# $(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := 8227l
PRODUCT_NAME := omni_8227l
PRODUCT_BRAND := alps
PRODUCT_MODEL := Alps 8227L
PRODUCT_MANUFACTURER := alps
PRODUCT_RELEASE_NAME := Alps 8227L
