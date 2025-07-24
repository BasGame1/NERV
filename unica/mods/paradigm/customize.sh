LOG_STEP_IN "- Adding S25 Sounds"
DELETE_FROM_WORK_DIR "system" "system/media/audio"
ADD_TO_WORK_DIR "pa1qxx" "system" \
    "system/hidden/INTERNAL_SDCARD/Music/Samsung/Over_the_Horizon.m4a" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa1qxx" "system" "system/etc/ringtones_count_list.txt" 0 0 644 "u:object_r:system_file:s0"    
ADD_TO_WORK_DIR "pa1qxx" "system" "system/media/audio" 0 0 755 "u:object_r:system_file:s0"
SET_PROP "vendor" "ro.config.ringtone" "ACH_Galaxy_Bells.ogg"
SET_PROP "vendor" "ro.config.notification_sound" "ACH_Brightline.ogg"
SET_PROP "vendor" "ro.config.alarm_alert" "ACH_Morning_Xylophone.ogg"
SET_PROP "vendor" "ro.config.media_sound" "Media_preview_Touch_the_light.ogg"
SET_PROP "vendor" "ro.config.ringtone_2" "ACH_Atomic_Bell.ogg"
SET_PROP "vendor" "ro.config.notification_sound_2" "ACH_Three_Star.ogg" 
LOG_STEP_OUT

LOG_STEP_IN "- Adding Galaxy AI features"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_DISABLE_NATIVE_AI" --delete
# Now Brief
ADD_TO_WORK_DIR "pa1qxx" "system" "system/priv-app/SamsungSmartSuggestions/SamsungSmartSuggestions.apk" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa1qxx" "system" \
    "system/etc/default-permissions/default-permissions-com.samsung.android.app.moments.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "pa1qxx" "system" "system/priv-app/Moments/Moments.apk" 0 0 644 "u:object_r:system_file:s0"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_COMMON_CONFIG_AI_VERSION" "20251"
SET_FLOATING_FEATURE_CONFIG "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_PERSONALIZED_DATA_CORE" "TRUE"
# Photo Editor
DELETE_FROM_WORK_DIR "system" "system/priv-app/PhotoEditor_Full"
ADD_TO_WORK_DIR "dm1qxx" "system" "system/priv-app/PhotoEditorAI_Full/PhotoEditorAI_Full.apk" 0 0 644 "u:object_r:system_file:s0"
# Video Editor
ADD_TO_WORK_DIR "dm1qxx" "system" "system/app/VideoEditorLite_Dream_N/VideoEditorLite_Dream_N.apk" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "dm1qxx" "system" "system/app/VideoTrimmer/VideoTrimmer.apk" 0 0 644 "u:object_r:system_file:s0"
# Bixby Interpeter
ADD_TO_WORK_DIR "dm1qxx" "system" "system/priv-app/BixbyInterpreter/BixbyInterpreter.apk" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "dm1qxx" "system" "system/etc/permissions/privapp-permissions-com.samsung.android.app.interpreter.xml" 0 0 644 "u:object_r:system_file:s0"
# Visual Cloud Core
ADD_TO_WORK_DIR "dm1qxx" "system" "system/app/VisualCloudCore/VisualCloudCore.apk" 0 0 644 "u:object_r:system_file:s0"
# SketchBook
ADD_TO_WORK_DIR "dm1qxx" "system" "system/app/SketchBook/SketchBook.apk" 0 0 644 "u:object_r:system_file:s0"
# Circle to Search
ADD_TO_WORK_DIR "dm1qxx" "product" "priv-app/Velvet/Velvet.apk" 0 0 644 "u:object_r:system_file:s0"
SET_PROP "product" "ro.com.google.cdb.spa1" "bsxasm1"
ADD_TO_WORK_DIR "dm1qxx" "product" "etc/sysconfig/google_searcle.xml" 0 0 644 "u:object_r:system_file:s0"
ADD_TO_WORK_DIR "dm1qxx" "product" "etc/sysconfig/sysconfig_contextual_search.xml" 0 0 644 "u:object_r:system_file:s0"
# AI Wallpaper Generator
ADD_TO_WORK_DIR "dm1qxx" "product" "priv-app/AiWallpaper/AiWallpaper.apk" 0 0 644 "u:object_r:system_file:s0"

# Use S24 FE Wallpapers
LOG_STEP_IN "- Replace wallpaper-res"
ADD_TO_WORK_DIR "r12sxxx" "system" \
    "system/priv-app/wallpaper-res/wallpaper-res.apk" 0 0 644 "u:object_r:system_file:s0"
LOG_STEP_OUT
