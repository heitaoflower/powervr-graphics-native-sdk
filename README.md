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

<hr>

### [bumpmap](examples/intermediate/bumpmap)
<img src="examples/intermediate/bumpmap/bumpmap.png" height="72px" align="right">

Bump mapping is a technique for simulating bumps and wrinkles on the surface of an object. This is achieved by perturbing the surface normals of the object and using the perturbed normal during the illumination calculations. The result is an apparently bumpy surface rather than a perfectly smooth surface although the surface of the underlying object is not actually changed. This technique is used extensively in graphics applications to add perceived detail to models without adding further geometry.

APIS: Vulkan 1.0, OpenGL ES 2.0

<hr>

### [multi_sampling](examples/intermediate/multi_sampling)
<img src="examples/intermediate/multi_sampling/multi_sampling.png" height="72px" align="right">

This training course demonstrates how to use the framework to render a scene using multisampling feature. Uses the PVREngineUtils library to display simple text on screen. Provided for Vulkan (with SpirV shaders) and OpenGL ES(version 2.x and 3.x shaders).

APIS: Vulkan 1.0

<hr>

### [multi_threading](examples/intermediate/multi_threading)
<img src="examples/intermediate/multi_threading/multi_threading.png" height="72px" align="right">

This training course will display a loading screen while assets are being loaded in, and then 
switch to displaying the bust from the BumpMap demo.
Implemented for Vulkan and OpenGL ES 2.0/3.0.

APIS: Vulkan 1.0, OpenGL ES 2.0

<hr>

### [multi_view_vr](examples/intermediate/multi_view_vr)
<img src="examples/intermediate/multi_view_vr/multi_view_vr.png" height="72px" align="right">

This training course introduces the OVR_multi_view extension, and shows how to use the extension to render the scene from two different eye locations.

APIS: OpenGL ES 3.0

<hr>

### [post_processing](examples/intermediate/post_processing)
<img src="examples/intermediate/post_processing/post_processing.png" height="72px" align="right">

This training course demonstrates a simple implementation of a 'bloom' post processing effect, using multiple PVRApi Render Passes to apply the postprocessing. The bright parts of the picture are extracted in lower resolution in a post processing step, blurred and then added over the final image to create a glow around the object's borders.

APIS: OpenGL ES 2.0

Controls:<br/>
	-	Left/Right	-	Change the rendering mode (Object with bloom, object w/o bloom, bloom textures)
	-	Up/Down	-	Increase/Decrease bloom intensity
	-	Any Action	-	Pause
	-	Quit	-	Close the application
