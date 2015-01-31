# Copyright (C) 2013 The CyanogenMod Project
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

# inherit from the common rhine definitions
include device/sony/rhine-common/BoardConfigCommon.mk

# inherit from the proprietary version
#-include vendor/sony/togari/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := C6802,C6806,C6833,C6843,togari

TARGET_SPECIFIC_HEADER_PATH += device/sony/togari/include

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/togari/bluetooth

# Disable periodic battery polling
HEALTHD_CHATTY_MODE := false

# Compiler flags
TARGET_GCC_VERSION_EXP := 4.8
TARGET_USE_PIPE := true
ENABLE_MODULAR_O3 := true
SUPPRES_UNUSED_WARNING := true
KRAIT_TUNINGS := true
ENABLE_GCCONLY := true
GRAPHITE_OPTS := true
STRICT_ALIASING2 := true
BOOT_ZIP_OUT_FILE := SlimKernel-$(TARGET_DEVICE)-$(PLATFORM_VERSION)-$(shell date +"%Y%m%d")

# Kernel properties
TARGET_KERNEL_CONFIG := slim_rhine_togari_row_defconfig
ENABLE_GRAPHITE := true

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 26

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1056964608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
