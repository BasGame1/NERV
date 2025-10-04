#
# Copyright (C) 2025 Thomas
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# Device configuration file for Galaxy A21s (a21s)
TARGET_NAME="Galaxy A21s"
TARGET_CODENAME="a21s"
TARGET_ASSERT_MODEL=("SM-A217F" "SM-A217M" "SM-A217N")
TARGET_FIRMWARE="SM-A217F/EGY/352230908587469"

# API
TARGET_API_LEVEL=31
TARGET_PRODUCT_FIRST_API_LEVEL=29
TARGET_VENDOR_API_LEVEL=31

# File System
TARGET_OS_FILE_SYSTEM="ext4"

# Single system image
TARGET_SINGLE_SYSTEM_IMAGE="essi"

# Super
TARGET_SUPER_PARTITION_SIZE=5557452800
TARGET_SUPER_GROUP_SIZE=5557450752
TARGET_HAS_SYSTEM_EXT="false"

# Features
# Audio
TARGET_AUDIO_SUPPORT_ACH_RINGTONE="false"
TARGET_AUDIO_SUPPORT_DUAL_SPEAKER="false"
TARGET_AUDIO_SUPPORT_VIRTUAL_VIBRATION="false"

# Camera
TARGET_HAS_MASS_CAMERA_APP="true"

# Display
TARGET_HAS_QHD_DISPLAY="false"
TARGET_AUTO_BRIGHTNESS_TYPE="5"

# DVFS/SSRM
TARGET_DVFS_CONFIG_NAME="dvfs_policy_exynos850_xx"
TARGET_SSRM_CONFIG_NAME="siop_a21s_exynos850"

# eSIM
TARGET_IS_ESIM_SUPPORTED="false"

# HFR
TARGET_HFR_MODE="2"
TARGET_HFR_DEFAULT_REFRESH_RATE="60"
TARGET_HFR_SUPPORTED_REFRESH_RATE="60"

# Fingerprint
TARGET_FP_SENSOR_CONFIG="google_touch_side,settings=3"
TRAGET_FP_SENSOR_TYPE="google_touch_side,settings=3"
# MDNIE
TARGET_HAS_HW_MDNIE="false"
TARGET_MDNIE_SUPPORTED_MODES="45073"
TARGET_MDNIE_WEAKNESS_SOLUTION_FUNCTION="0"

# Misc
TARGET_SUPPORT_CUTOUT_PROTECTION="true"
TARGET_MULTI_MIC_MANAGER_VERSION="07010"

TARGET_BOOT_DEVICE_PATH="/dev/block/by-name"
