[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.md)
[![Coverity Scan](https://scan.coverity.com/projects/13502/badge.svg)](https://scan.coverity.com/projects/heitaoflower-powervr-graphics-native-sdk)
[![Week Stars](http://starveller.sigsev.io/api/repos/heitaoflower/powervr-graphics-native-sdk/badge)](http://starveller.sigsev.io/heitaoflower/powervr-graphics-native-sdk)

![vulkan](documentation/images/vulkan_logo.png) ![ogles](documentation/images/ogles_logo.png)  
# powervr-graphics-native-sdk 
C++ cross-platform 3D graphics SDK. Includes demos &amp; helper code (resource loading etc.) to speed up development of Vulkan, OpenGL ES 1.x, 2.0 &amp; 3.x applications.

# Examples

*Examples marked with :speech_balloon: offer additional details with a separate readme.*

## Basics

### [01_hello_api](examples/beginner/01_hello_api/)
<img src="examples/beginner/01_hello_api/hello_api.png" height="72px" align="right">

A basic tutorial that guides the user, step-by-step, through the process of initializing a window using the "raw" API, (Vulkan or OpenGL ES 2), drawing a triangle with a simple shader, and then terminating the window.

APIS: Vulkan 1.0, OpenGL ES 2.0

### [02_introducing_pvr_shell](examples/beginner/02_introducing_pvr_shell/)
<img src="examples/beginner/02_introducing_pvr_shell/introcuding_pvr_shell.png" height="72px" align="right">

This demo deals with the PVRShell library.  The PowerVR shell handles all OS specific initialisation code, and has several built in command line features which allow for the specifying of attributes. When using the PVR Shell, the application uses the class 'pvr::Shell' as its base class, and is constructed and returned from a 'pvr::newDemo' function.

APIS: Vulkan 1.0, OpenGL ES 2.0

### [03_introducing_pvr_assets](examples/beginner/03_introducing_pvr_assets/)
<img src="examples/beginner/03_introducing_pvr_assets/introducing_pvr_assets.png" height="72px" align="right">

This training course introduces the PowerVR Framework PVRAssets library, and shows how to use it to read a PowerVR Object Data (.pod) file and textures.  It goes into detail on how to open .pod files, .pvr files that have been referenced by it, and set up the cameras and lights from the .pod file. This demo also demonstrates the use of PVRNativeApi (either Vulkan or OpenGL ES), which is the API binding used in the native parts of this this SDK.

APIS: Vulkan 1.0, OpenGL ES 2.0
