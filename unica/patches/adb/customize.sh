# Only enable on debug builds
if ! $DEBUG; then
    return 0
fi
# Disable adb authentication
# https://android.googlesource.com/platform/packages/modules/adb/+/refs/tags/android-15.0.0_r1/daemon/main.cpp#213
SET_PROP_IF_DIFF "system" "ro.adb.secure" "0"
SET_PROP_IF_DIFF "vendor" "ro.adb.secure" "0"

# Do not filter out Samsung processes in logs
SET_PROP_IF_DIFF "system" "persist.log.semlevel" "0xFFFFFFFF"
