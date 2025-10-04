#
# Copyright (C) 2023 Salvo Giangreco
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
# UN1CA debloat list
# - Add entries inside the specific partition containing that file (<PARTITION>_DEBLOAT+="")
# - DO NOT add the partition name at the start of any entry (eg. "/system/dpolicy_system")
# - DO NOT add a slash at the start of any entry (eg. "/dpolicy_system")
SYSTEM_EXT_DEBLOAT+="
framework/org.carconnectivity.android.digitalkey.rangingintent.jar
framework/org.carconnectivity.android.digitalkey.secureelement.jar
"

# Samsung Defex policy
SYSTEM_DEBLOAT+="
dpolicy_system
"

VENDOR_DEBLOAT+="
etc/dpolicy
"

# Samsung SIM Unlock
SYSTEM_DEBLOAT+="
system/bin/ssud
system/etc/init/ssu_dm1qxxx.rc
system/etc/init/ssu.rc
system/etc/permissions/privapp-permissions-com.samsung.ssu.xml
system/etc/sysconfig/samsungsimunlock.xml
system/lib64/android.security.securekeygeneration-ndk.so
system/lib64/libssu_keystore2.so
system/priv-app/SsuService
"

# Recovery restoration script
VENDOR_DEBLOAT+="
recovery-from-boot.p
bin/install-recovery.sh
etc/init/vendor_flash_recovery.rc
"

# Vendor sepolicy version
VENDOR_DEBLOAT+="
etc/selinux/vendor_sepolicy_version
"

# Apps debloat
PRODUCT_DEBLOAT+="
app/DuoStub
"

SYSTEM_DEBLOAT+="
system/app/FBAppManager_NS
system/app/PlayAutoInstallConfig
system/app/SamsungPassAutofill_v1
system/app/SamsungTTSVoice_de_DE_f00
system/app/SamsungTTSVoice_en_GB_f00
system/app/SamsungTTSVoice_en_US_l03
system/app/SamsungTTSVoice_es_ES_f00
system/app/SamsungTTSVoice_es_MX_f00
system/app/SamsungTTSVoice_es_US_f00
system/app/SamsungTTSVoice_fr_FR_f00
system/app/SamsungTTSVoice_hi_IN_f00
system/app/SamsungTTSVoice_it_IT_f00
system/app/SamsungTTSVoice_pl_PL_f00
system/app/SamsungTTSVoice_pt_BR_f00
system/app/SamsungTTSVoice_ru_RU_f00
system/app/SamsungTTSVoice_th_TH_f00
system/app/SamsungTTSVoice_vi_VN_f00
system/app/SamsungTTSVoice_el_GR_f00
system/etc/permissions/com.samsung.feature.aremoji_v2.xml
system/etc/permissions/privapp-permissions-com.samsung.android.aremoji.xml
system/etc/permissions/privapp-permissions-com.samsung.android.aremojieditor.xml
system/etc/permissions/privapp-permissions-com.samsung.android.smartswitchassistant.xml
system/etc/permissions/privapp-permissions-com.sec.android.app.billing.xml
system/etc/permissions/privapp-permissions-com.sec.android.app.magnifier.xml
system/etc/permissions/signature-permissions-com.samsung.android.samsungpass.xml
system/etc/permissions/signature-permissions-com.samsung.android.samsungpassautofill.xml
system/etc/permissions/signature-permissions-com.samsung.android.spay.xml
system/etc/permissions/signature-permissions-com.samsung.android.spayfw.xml
system/etc/permissions/signature-permissions-com.sec.android.app.magnifier.xml
system/hidden
system/preload
system/priv-app/AuthFramework
system/priv-app/DeviceKeystring
system/priv-app/DiagMonAgent94
system/priv-app/DigitalKey
system/priv-app/FBInstaller_NS
system/priv-app/FBServices
system/priv-app/FotaAgent
system/priv-app/OMCAgent5
system/priv-app/OneDrive_Samsung_v3
system/priv-app/PaymentFramework
system/priv-app/SOAgent75
system/priv-app/SPPPushClient
system/priv-app/SamsungBilling
system/priv-app/SamsungCarKeyFw
system/priv-app/SamsungMagnifier3
system/priv-app/SamsungPass
system/priv-app/SmartSwitchAssistant
system/priv-app/YourPhone_P1_5
"

PRODUCT_DEBLOAT+="
app/AssistantShell
app/Chrome64
app/Gmail2
app/Maps
app/Photos
app/YouTube
overlay/GmsConfigOverlaySearchSelector.apk
priv-app/SearchSelector
"

SYSTEM_DEBLOAT+="
system/app/BookmarkProvider
system/app/FactoryAirCommandManager
system/app/GearManagerStub
system/app/MAPSAgent
system/app/MDMApp
system/app/Rampart
system/app/WifiGuider
system/etc/default-permissions/default-permissions-com.sec.spp.push.xml
system/etc/init/digitalkey_init_uwb_tss2.rc
system/etc/init/samsung_pass_authenticator_service.rc
system/etc/permissions/authfw.xml
system/etc/permissions/com.samsung.feature.ipsgeofence.xml
system/etc/permissions/com.samsung.feature.samsungpositioning.xml
system/etc/permissions/privapp-permissions-com.microsoft.skydrive.xml
system/etc/permissions/privapp-permissions-com.samsung.android.authfw.xml
system/etc/permissions/privapp-permissions-com.samsung.android.carkey.xml
system/etc/permissions/privapp-permissions-com.samsung.android.providers.factory.xml
system/etc/permissions/privapp-permissions-com.samsung.android.ipsgeofence.xml
system/etc/permissions/privapp-permissions-com.samsung.android.samsungpass.xml
system/etc/permissions/privapp-permissions-com.samsung.android.samsungpositioning.xml
system/etc/permissions/privapp-permissions-com.samsung.android.spayfw.xml
system/etc/permissions/privapp-permissions-com.sec.android.app.factorykeystring.xml
system/etc/permissions/privapp-permissions-com.sem.factoryapp.xml
system/etc/permissions/privapp-permissions-com.sec.imslogger.xml
system/etc/permissions/privapp-permissions-com.sec.spp.push.xml
system/etc/permissions/privapp-permissions-com.skms.android.agent.xml
system/etc/PF_TA
system/etc/sysconfig/preinstalled-packages-com.samsung.android.dkey.xml
system/etc/sysconfig/preinstalled-packages-com.samsung.android.spayfw.xml
system/etc/sysconfig/samsungauthframework.xml
system/etc/sysconfig/samsungpassapp.xml
system/etc/sysconfig/samsungpushservice.xml
system/hidden/SmartTutor
system/preload/Facebook_stub_preload
system/priv-app/AvatarEmojiSticker
system/priv-app/EnhancedAttestationAgent
system/priv-app/FacAtFunction
system/priv-app/KLMSAgent
system/priv-app/ImsLogger
system/priv-app/IpsGeofence
system/priv-app/ModemServiceMode
system/priv-app/LinkToWindowsService
system/priv-app/OdaService
system/priv-app/SamsungPositioning
system/priv-app/TalkbackSE
"

# Camera SDK
SYSTEM_DEBLOAT+="
system/etc/default-permissions/default-permissions-com.samsung.android.globalpostprocmgr.xml
system/etc/default-permissions/default-permissions-com.samsung.petservice.xml
system/etc/permissions/cameraservice.xml
system/etc/permissions/privapp-permissions-com.samsung.android.globalpostprocmgr.xml
system/etc/permissions/privapp-permissions-com.samsung.petservice.xml
system/etc/permissions/sec_camerax_impl.xml
system/etc/permissions/sec_camerax_service.xml
system/framework/sec_camerax_impl.jar
system/framework/scamera_sep.jar
system/priv-app/GlobalPostProcMgr
system/priv-app/PetService
system/priv-app/SCameraSDKService
system/priv-app/sec_camerax_service
"

# mAFPC
SYSTEM_DEBLOAT+="
system/bin/mafpc_write
"

# extra debloat
SYSTEM_DEBLOAT+="
system/app/LiveTranscribe
system/app/AREmoji
system/app/KidsHome_Installer
system/app/ParentalCare
system/app/SamsungCalendar
system/app/PartnerBookmarksProvider
system/app/StickerCenter
system/app/SmartSwitchAgent
system/app/SmartSwitchStub
system/app/BixbyWakeup
system/app/FactoryCameraFB
system/app/ARCore
system/app/BBCAgent
system/priv-app/AREmoji
system/priv-app/AREmojiEditor
system/priv-app/BixbyInterpreter
system/priv-app/BixbyVisionFramework3.5
system/priv-app/Bixby
system/priv-app/StickerFaceARAvatar
system/priv-app/SamsungCalendarProvider
system/priv-app/BadgeProvider_N
system/priv-app/AvatarPicker
system/app/SketchBook
system/app/UnifiedWFC
system/priv-app/AutoDoodle
system/priv-app/VexScanner
system/priv-app/HashTagService
system/app/VisionIntelligence3.7
system/app/SamsungTTS
system/app/SamsungWeather
system/app/VideoEditorLite_Dream_N
system/app/VideoTrimmer
system/priv-app/SamsungIntelliVoiceServices
system/app/OCRDataProvider
system/priv-app/EarphoneTypeC
system/priv-app/IntelligentDynamicFpsService
system/app/WifiRROverlayAppQC
system/app/WifiRROverlayAppWifiLock
system/app/WifiRROverlayAppH2E
system/priv-app/AppUpdateCenter
system/priv-app/Tag
system/app/ChromeCustomizations
system/app/DRParser
system/app/Fast
system/app/HMT
system/app/SmartReminder
system/priv-app/SamsungMessages
system/etc/mediasearch
system/priv-app/MediaSearch
system/etc/default-permissions/default-permissions-com.samsung.mediasearch.xml
system/etc/permissions/privapp-permissions-com.samsung.mediasearch.xml
"

PRODUCT_DEBLOAT+="
app/com.google.mainline.telemetry
app/com.google.mainline.adservices
app/SpeechServicesByGoogle
priv-app/AiWallpaper
priv-app/GooglePartnerSetup
overlay/SoftapOverlay6GHz
overlay/SoftapOverlayDualAp
overlay/SoftapOverlayOWE
overlay/SoftapOverlayQC
priv-app/FamilyLinkParentalControls	
app/Duo
priv-app/Messages
app/GoogleCalendarSyncAdapter
app/GoogleLocationHistory
"
