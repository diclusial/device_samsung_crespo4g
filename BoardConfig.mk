# Copyright (C) 2007 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Use the non-open-source parts, if they're present
-include vendor/samsung/crespo/BoardConfig4gVendor.mk

# Use the open-source board-info file if none was set by the vendor
# config.
TARGET_BOARD_INFO_FILE ?= device/samsung/crespo4g/board-info.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/samsung/crespo4g/bluetooth

# Use the parts that are common between all crespos
include device/samsung/crespo/BoardConfigCommon.mk

# Use crespo4g-specific variants
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_crespo4g
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/crespo4g
