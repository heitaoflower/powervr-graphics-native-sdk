LOCAL_PATH := $(call my-dir)/../../..
PVRSDKDIR := $(realpath $(call my-dir)/../../../../../../..)

ASSETDIR := $(PVRSDKDIR)/examples/beginner/02_introducing_pvr_shell/ogles/platform/android/assets


ifneq "$(MAKECMDGOALS)" "clean"
# Prebuilt module PVRNativeGles
include $(CLEAR_VARS)
LOCAL_MODULE := PVRNativeGles
LOCAL_SRC_FILES := $(PVRSDKDIR)/framework/Bin/Android/local/$(TARGET_ARCH_ABI)/libPVRNativeGles.a
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


# Module OGLESIntroducingPVRShell
include $(CLEAR_VARS)

LOCAL_MODULE    := ogles_introducing_pvr_shell

### Add all source file names to be included in lib separated by a whitespace
LOCAL_SRC_FILES  := ogles_introducing_pvr_shell.cpp

LOCAL_C_INCLUDES := $(PVRSDKDIR)/framework \
                    $(PVRSDKDIR)/builds/include



LOCAL_LDLIBS := -lGLESv2 \
                -latomic \
                -llog \
                -landroid

LOCAL_STATIC_LIBRARIES := PVRNativeGles PVRCore android_native_app_glue


LOCAL_CFLAGS += $(SDK_BUILD_FLAGS)

LOCAL_WHOLE_STATIC_LIBRARIES := PVRShell

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)
