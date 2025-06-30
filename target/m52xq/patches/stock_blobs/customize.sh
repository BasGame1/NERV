LOG_STEP_IN
DELETE_FROM_WORK_DIR "system" "system/etc/permissions/com.sec.feature.cover.clearcameraviewcover.xml"
DELETE_FROM_WORK_DIR "system" "system/etc/permissions/com.sec.feature.cover.flip.xml"
DELETE_FROM_WORK_DIR "system" "system/etc/permissions/com.sec.feature.nfc_authentication.xml"
DELETE_FROM_WORK_DIR "system" "system/etc/permissions/com.sec.feature.nfc_authentication_cover.xml"
DELETE_FROM_WORK_DIR "system" "system/etc/permissions/com.sec.feature.nsflp_level_601.xml"
DELETE_FROM_WORK_DIR "system" "system/etc/permissions/com.sec.feature.pocketsensitivitymode_level1.xml"
DELETE_FROM_WORK_DIR "system" "system/etc/permissions/com.sec.feature.sensorhub_level29.xml"
DELETE_FROM_WORK_DIR "system" "system/etc/permissions/com.sec.feature.usb_authentication.xml"
DELETE_FROM_WORK_DIR "system" "system/etc/permissions/com.sec.feature.wirelesscharger_authentication.xml"
echo "- Add stock system features"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/etc/permissions/com.sec.feature.cover.minisviewwalletcover.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/etc/permissions/com.sec.feature.nsflp_level_600.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/etc/permissions/com.sec.feature.sensorhub_level40.xml" 0 0 644 "u:object_r:system_file:s0"
LOG_STEP_OUT

LOG_STEP_IN 
DELETE_FROM_WORK_DIR "system" "system/lib64/libnfc_nxpsn_jni.so"
DELETE_FROM_WORK_DIR "system" "system/priv-app/NfcNci/lib/arm64/libnfc_nxpsn_jni.so"
echo "- Adding SEC NFC blobs"
ADD_TO_WORK_DIR "pa1qxx" "system" "system/lib64/libnfc_sec_jni.so" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa1qxx" "system" "system/lib64/libnfc-nci_flags.so" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa1qxx" "system" "system/lib64/libnfc-sec.so" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa1qxx" "system" "system/lib64/libstatslog_nfc.so" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa1qxx" "system" "system/priv-app/NfcNci/lib/arm64/libnfc_sec_jni.so" 0 0 644 "u:object_r:system_file:s0"
LOG_STEP_OUT