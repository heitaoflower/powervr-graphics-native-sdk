LOCAL_PATH := $(call my-dir)/../../..
PVRSDKDIR := $(realpath $(call my-dir)/../../../../../../..)


# Module vulkan_hello_api
include $(CLEAR_VARS)

LOCAL_MODULE := vulkan_hello_api

### Add all source file names to be included in lib separated by a whitespace
LOCAL_SRC_FILES := vulkan_hello_api_android.cpp

LOCAL_C_INCLUDES := $(PVRSDKDIR)/builds/include

LOCAL_LDLIBS := -llog \
                -landroid 

LOCAL_STATIC_LIBRARIES := android_native_app_glue

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)
