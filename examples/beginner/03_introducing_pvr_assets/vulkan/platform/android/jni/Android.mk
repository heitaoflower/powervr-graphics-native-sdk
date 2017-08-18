LOCAL_PATH := $(call my-dir)/../../..
PVRSDKDIR := $(realpath $(call my-dir)/../../../../../../..)

ASSETDIR := $(PVRSDKDIR)/examples/beginner/03_introducing_pvr_assets/vulkan/platform/android/assets


ifneq "$(MAKECMDGOALS)" "clean"
# Prebuilt module PVRNativeVulkan
include $(CLEAR_VARS)
LOCAL_MODULE := PVRNativeVulkan
LOCAL_SRC_FILES := $(PVRSDKDIR)/framework/Bin/Android/local/$(TARGET_ARCH_ABI)/libPVRNativeVulkan.a
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq "$(MAKECMDGOALS)" "clean"
# Prebuilt module PVRAssets
include $(CLEAR_VARS)
LOCAL_MODULE := PVRAssets
LOCAL_SRC_FILES := $(PVRSDKDIR)/framework/Bin/Android/local/$(TARGET_ARCH_ABI)/libPVRAssets.a
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq "$(MAKECMDGOALS)" "clean"
# Prebuilt module PVRShell
include $(CLEAR_VARS)
LOCAL_MODULE := PVRShell
LOCAL_SRC_FILES := $(PVRSDKDIR)/framework/Bin/Android/local/$(TARGET_ARCH_ABI)/libPVRShell.a
include $(PREBUILT_STATIC_LIBRARY)
endif

ifneq "$(MAKECMDGOALS)" "clean"
# Prebuilt module PVRCore
include $(CLEAR_VARS)
LOCAL_MODULE := PVRCore
LOCAL_SRC_FILES := $(PVRSDKDIR)/framework/Bin/Android/local/$(TARGET_ARCH_ABI)/libPVRCore.a
include $(PREBUILT_STATIC_LIBRARY)
endif


# Module vulkan_introducing_pvr_assets
include $(CLEAR_VARS)

LOCAL_MODULE    := vulkan_introducing_pvr_assets

### Add all source file names to be included in lib separated by a whitespace
LOCAL_SRC_FILES  := vulkan_introducing_pvr_assets.cpp

LOCAL_C_INCLUDES := $(PVRSDKDIR)/framework \
                    $(PVRSDKDIR)/builds/include



LOCAL_LDLIBS := -llog \
                -latomic \
                -landroid

LOCAL_STATIC_LIBRARIES := PVRNativeVulkan PVRAssets PVRCore android_native_app_glue


LOCAL_CFLAGS += $(SDK_BUILD_FLAGS)

LOCAL_WHOLE_STATIC_LIBRARIES := PVRShell

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)
