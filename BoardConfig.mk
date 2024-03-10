#
# Copyright (C) 2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/a70q

include device/samsung/sm6150-common/BoardConfigCommon.mk

#Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true 

#Animations
EXTRA_UDFPS_ANIMATIONS := true

#Devices 
MATRIXX_CHIPSET := Snapdragon 675
MATRIXX_BATTERY := 4400 mah
MATRIXX_DISPLAY := 1080 x 2400

#Udfps
TARGET_HAS_UDFPS := true

#Gms
WITH_GMS := true

#gapps
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := a70q

# Board
BOARD_NAME           := SRPRL06C005

# Kernel
TARGET_KERNEL_CONFIG := a70q_defconfig
BOARD_MKBOOTIMG_ARGS += --board $(BOARD_NAME)

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/samsung/a70q/BoardConfigVendor.mk
