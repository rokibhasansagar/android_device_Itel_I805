#
# Copyright (C) 2020 The Android Open-Source Project
#               2018 The TwrpBuilder Open-Source Project
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

LOCAL_PATH := device/Itel/I805

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Copy zImage into place
PRODUCT_COPY_FILES += device/Itel/I805/prebuilt/zImage:kernel

# Set the main device brand flags
PRODUCT_DEVICE := I805
PRODUCT_NAME := omni_I805
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel S12
PRODUCT_MANUFACTURER := itel

# From full_base.mk
# Put en_US first in the list, so make it default.
PRODUCT_LOCALES := en_US

# adb is already there, so just add mtp for now
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Itel/I805/itel-S12:7.0/NRD90M/S12-I805-7.0-OP-V056-20180813:user/release-keys" \
    PRIVATE_BUILD_DESC="S12-user 7.0 NRD90M 1534131138 release-keys"

# try force addition of fingerprint
BUILD_FINGERPRINT := "Itel/I805/itel-S12:7.0/NRD90M/S12-I805-7.0-OP-V056-20180813:user/release-keys"
