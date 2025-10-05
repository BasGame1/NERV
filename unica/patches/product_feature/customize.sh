if [ "$TARGET_SINGLE_SYSTEM_IMAGE" == "self" ]; then
    return 0
fi

# [
GET_FP_SENSOR_TYPE()
{
    if [[ "$1" == *"ultrasonic"* ]]; then
        echo "ultrasonic"
    elif [[ "$1" == *"optical"* ]]; then
        echo "optical"
    elif [[ "$1" == *"side"* ]]; then
        echo "side"
    else
        LOGE "Unsupported fingerprint type: $1"
    fi
}
# ]

MODEL=$(echo -n "$TARGET_FIRMWARE" | cut -d "/" -f 1)
REGION=$(echo -n "$TARGET_FIRMWARE" | cut -d "/" -f 2)

if [[ "$SOURCE_PRODUCT_FIRST_API_LEVEL" != "$TARGET_PRODUCT_FIRST_API_LEVEL" ]]; then
    LOG_STEP_IN "- Applying MAINLINE_API_LEVEL patches"

    DECODE_APK "system" "system/framework/esecomm.jar"
    DECODE_APK "system" "system/framework/services.jar"

    FTP="
    system/framework/esecomm.jar/smali/com/sec/esecomm/EsecommAdapter.smali
    system/framework/services.jar/smali/com/android/server/SystemServer.smali
    system/framework/services.jar/smali/com/android/server/enterprise/hdm/HdmVendorController.smali
    "
   #  Delete file until new version system/framework/services.jar/smali_classes2/com/android/server/power/PowerManagerUtil.smali

    for f in $FTP; do
        sed -i \
            "s/\"MAINLINE_API_LEVEL: $SOURCE_PRODUCT_FIRST_API_LEVEL\"/\"MAINLINE_API_LEVEL: $TARGET_PRODUCT_FIRST_API_LEVEL\"/g" \
            "$APKTOOL_DIR/$f"
        sed -i "s/\"$SOURCE_PRODUCT_FIRST_API_LEVEL\"/\"$TARGET_PRODUCT_FIRST_API_LEVEL\"/g" "$APKTOOL_DIR/$f"
    done
    LOG_STEP_OUT
fi
if [[ "$(GET_FP_SENSOR_TYPE "$SOURCE_FP_SENSOR_CONFIG")" != "$(GET_FP_SENSOR_TYPE "$TARGET_FP_SENSOR_CONFIG")" ]]; then
   LOG_STEP_IN "- Applying fingerprint sensor patches"

    DECODE_APK "system" "system/framework/framework.jar"
    DECODE_APK "system" "system/framework/services.jar"
    DECODE_APK "system" "system/priv-app/SecSettings/SecSettings.apk"
    DECODE_APK "system_ext" "priv-app/SystemUI/SystemUI.apk"
    DECODE_APK "system" "system/priv-app/BiometricSetting/BiometricSetting.apk"

    FTP="
    system/framework/services.jar/smali/com/android/server/biometrics/sensors/fingerprint/FingerprintUtils.smali
    system/priv-app/SecSettings/SecSettings.apk/smali_classes4/com/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils.smali
    "
    for f in $FTP; do
        sed -i "s/$SOURCE_FP_SENSOR_CONFIG/$TARGET_FP_SENSOR_CONFIG/g" "$APKTOOL_DIR/$f"
    done

    grep -lr "$SOURCE_FP_SENSOR_CONFIG" "$APKTOOL_DIR/system/framework/framework.jar/" | xargs -r -n 1 sed -i "s/$SOURCE_FP_SENSOR_CONFIG/$TARGET_FP_SENSOR_CONFIG/g"
	if [[ "$TARGET_SINGLE_SYSTEM_IMAGE" == "essi" ]]; then
        if [[ "$(GET_FP_SENSOR_TYPE "$TARGET_FP_SENSOR_CONFIG")" == "optical" ]]; then
            ADD_TO_WORK_DIR "a36xqnaxx" "system" "system/bin/surfaceflinger"
            ADD_TO_WORK_DIR "a36xqnaxx" "system" "system/lib64/libgui.so"
            ADD_TO_WORK_DIR "a36xqnaxx" "system" "system/lib64/libui.so"
            APPLY_PATCH "system" "system/framework/services.jar" "$SRC_DIR/unica/patches/product_feature/fingerprint/essi/services.jar/0001-Set-FP_FEATURE_SENSOR_IS_ULTRASONIC-to-false.patch"
            APPLY_PATCH "system" "system/priv-app/BiometricSetting/BiometricSetting.apk" "$SRC_DIR/unica/patches/product_feature/fingerprint/essi/BiometricSetting.apk/0001-Set-FP_FEATURE_SENSOR_IS_ULTRASONIC-to-false.patch"
        elif [[ "$(GET_FP_SENSOR_TYPE "$TARGET_FP_SENSOR_CONFIG")" == "side" ]]; then
            ADD_TO_WORK_DIR "b5qxxx" "system" "."
            APPLY_PATCH "system" "system/framework/services.jar" "$SRC_DIR/unica/patches/product_feature/fingerprint/essi/services.jar/0001-Set-FP_FEATURE_SENSOR_IS_OPTICAL-to-false.patch"
            APPLY_PATCH "system" "system/framework/services.jar" "$SRC_DIR/unica/patches/product_feature/fingerprint/essi/services.jar/0002-Set-FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE-to-false.patch"
        elif [[ "$(GET_FP_SENSOR_TYPE "$TARGET_FP_SENSOR_CONFIG")" == "ultrasonic" ]]; then
            ADD_TO_WORK_DIR "r0sxxx" "system" "." 0 0 755 "u:object_r:system_file:s0"
            APPLY_PATCH "system" "system_ext/priv-app/SystemUI/SystemUI.apk" "$SRC_DIR/unica/patches/product_feature/fingerprint/essi/SystemUI.apk/0001-Add-ultrasonic-FOD-support.patch"
            APPLY_PATCH "system" "system/priv-app/SecSettings/SecSettings.apk" "$SRC_DIR/unica/patches/product_feature/fingerprint/essi/SecSettings.apk/0001-Disable-isOpticalSensor.patch"
        fi

        #if [[ "$TARGET_FP_SENSOR_CONFIG" == *"navi=1"* ]]; then
            #APPLY_PATCH "system" "system/framework/services.jar" \
                #"$SRC_DIR/unica/patches/product_feature/fingerprint/essi/services.jar/0001-Enable-FP_FEATURE_GESTURE_MODE.patch"
        #fi
        #if [[ "$TARGET_FP_SENSOR_CONFIG" == *"no_delay_in_screen_off"* ]]; then
            #APPLY_PATCH "system" "system/priv-app/BiometricSetting/BiometricSetting.apk" \
                #"$SRC_DIR/unica/patches/product_feature/fingerprint/essi/BiometricSetting.apk/0001-Enable-FP_FEATURE_NO_DELAY_IN_SCREEN_OFF.patch"
        #fi
    fi
    LOG_STEP_OUT
fi


if $SOURCE_IS_ESIM_SUPPORTED; then
    if ! $TARGET_IS_ESIM_SUPPORTED; then
        SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_CONFIG_EMBEDDED_SIM_SLOTSWITCH" --delete
        SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EMBEDDED_SIM" --delete
    fi
fi
