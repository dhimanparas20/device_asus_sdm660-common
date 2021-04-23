LOCAL_PATH := $(call my-dir)

# Asus Calculator
include $(CLEAR_VARS)
LOCAL_MODULE := AsusCalculator
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := system/priv-app/AsusCalculator/AsusCalculator.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app
LOCAL_OVERRIDES_PACKAGES := Calculator ExactCalculator
include $(BUILD_PREBUILT)

# Gboard 
include $(CLEAR_VARS)
LOCAL_MODULE := Gboard
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := system/priv-app/Gboard/Gboard.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app
LOCAL_OVERRIDES_PACKAGES :=  Keyboard keyboard
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

# GcamGo
include $(CLEAR_VARS)
LOCAL_MODULE := GCam
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := system/priv-app/Gcam/Gcam-Go.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_PATH := $(TARGET_OUT)/priv-app
LOCAL_OVERRIDES_PACKAGES := SnapdragonCamera Snap Camera2
include $(BUILD_PREBUILT)

# Via 
include $(CLEAR_VARS)
LOCAL_MODULE := Via
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := system/priv-app/Via/Via.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
LOCAL_OVERRIDES_PACKAGES := Search WebView WebView_Shell Browser 
LOCAL_PRODUCT_MODULE := $(TARGET_OUT)/priv-app
include $(BUILD_PREBUILT)
