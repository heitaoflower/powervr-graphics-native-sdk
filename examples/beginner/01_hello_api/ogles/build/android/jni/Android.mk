LOCAL_PATH := $(call my-dir)/../../..

# Module ogles_hello_api
include $(CLEAR_VARS)

LOCAL_MODULE := ogles_hello_api

### Add all source file names to be included in lib separated by a whitespace
LOCAL_SRC_FILES := ogles_hello_api_android.cpp

LOCAL_LDLIBS := -llog \
				-landroid \
				-lEGL \
				-lGLESv2

LOCAL_STATIC_LIBRARIES := android_native_app_glue

include $(BUILD_SHARED_LIBRARY)

$(call import-module, android/native_app_glue)