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

<hr>

### [02_introducing_pvr_shell](examples/beginner/02_introducing_pvr_shell/)
<img src="examples/beginner/02_introducing_pvr_shell/introcuding_pvr_shell.png" height="72px" align="right">

This demo deals with the PVRShell library.  The PowerVR shell handles all OS specific initialisation code, and has several built in command line features which allow for the specifying of attributes. When using the PVR Shell, the application uses the class 'pvr::Shell' as its base class, and is constructed and returned from a 'pvr::newDemo' function.

APIS: Vulkan 1.0, OpenGL ES 2.0

<hr>

### [03_introducing_pvr_assets](examples/beginner/03_introducing_pvr_assets/)
<img src="examples/beginner/03_introducing_pvr_assets/introducing_pvr_assets.png" height="72px" align="right">

This training course introduces the PowerVR Framework PVRAssets library, and shows how to use it to read a PowerVR Object Data (.pod) file and textures.  It goes into detail on how to open .pod files, .pvr files that have been referenced by it, and set up the cameras and lights from the .pod file. This demo also demonstrates the use of PVRNativeApi (either Vulkan or OpenGL ES), which is the API binding used in the native parts of this this SDK.

APIS: Vulkan 1.0, OpenGL ES 2.0

<hr>

### [04_introducing_pvr_api](examples/beginner/04_introducing_pvr_api/)
<img src="examples/beginner/04_introducing_pvr_api/introducing_pvr_api.png" height="72px" align="right">

This training course demonstrates how to use the PVRApi library to render a scene from a pod file, using a .pfx effect file. PFX is both a file format and an API, and stands for PowerVR Effects. The library loads the POD file and the PFX file separately, creates a PVRAssets Model from the POD and a PVRApi Effect from the PFX file, and combines them to render the scene using the PVRApi necessary objects. Uses the PVREngineUtils library to display simple text on screen. Provided for Vulkan (with SpirV shaders) and OpenGL ES(version 2.x and 3.x shaders).

APIS: Vulkan 1.0, OpenGL ES 2.0/3.0

<hr>

### [05_introducing_ui_renderer](examples/beginner/05_introducing_ui_renderer/)
<img src="examples/beginner/05_introducing_ui_renderer/introducing_ui_renderer.png" height="72px" align="right">

This training course introduces the PVREngineUtils framework library.The user can create "Sprites" (2D elements) which can be grouped in 2D and/or 3D groups to be displayed as UI's or world text. 2D transformations (pixel and/or NDC coordinates) both single and in a group, anchoring on different parts of the screen or the group and 3D transformations of groups of sprites are all possible.
In this example, UIRendererer is used to display images and Unicode text, screen aligned and with 3D transformations. 

APIS: Vulkan 1.0, OpenGL ES 2.0

<hr>

### [06_introducing_pvr_camera](examples/beginner/06_introducing_pvr_camera/)
<img src="examples/beginner/06_introducing_pvr_camera/introducing_pvr_camera.png" height="72px" align="right">

The PVRCamera library gives a very simple, unified API to access the video feed of an iOS or Android device as a PVRApi (or OpenGL ES) texture. This demo displays this texture on the screen using a very simple shader that inverts the colours.
Note: On android N, the Camera permission must be given to the application.

APIS: OpenGL ES 2.0
