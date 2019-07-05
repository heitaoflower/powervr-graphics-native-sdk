[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.md)
[![Coverity Scan](https://scan.coverity.com/projects/13502/badge.svg)](https://scan.coverity.com/projects/heitaoflower-powervr-graphics-native-sdk)

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

Controls | Descriptions
-------- | ---
Left/Right | Change the rendering mode (Object with bloom, object w/o bloom, bloom textures)
Up/Down    | Increase/Decrease bloom intensity
Any Action | Pause
Quit       | Close the application

<hr>

### [deferred_shading](examples/advanced/deferred_shading)
<img src="examples/advanced/deferred_shading/deferred_shading.png" height="72px" align="right">

Traditional rendering algorithms submit geometry and immediately apply shading effects to the rasterized primitives. Complex shading effects may require multiple render passes to produce the final pixel color, with the geometry submitted every pass. Deferred shading is an alternative rendering technique that submits the scene geometry once, storing per-pixel attributes into local video memory to be used in the subsequent rendering passes. 
In these later passes, light volume primitives are rendered, and the per-pixel attributes contained in the buffer are retrieved at a 1:1 mapping ratio so that each pixel is shaded individually.
In the PowerVR architecture, the user can use fast on-chip memory instead of Multiple Render Targets, by utilising the Pixel Local Storage extension.
If running from a command line, add -forcemrt to force Multiple Render Targets rendering.
Requires at least OpenGL ES 3.0 capability for either MRT or PLS. Requires the extension GL_EXT_shader_pixel_local_storage for PLS.

APIS: Vulkan 1.0, OpenGL ES 3.0

Controls | Descriptions
-------- | ---
Action1 | Change the rendering mode (Object with bloom, object w/o bloom, bloom textures)
Action2 | Increase/Decrease bloom intensity
Quit    | Close the application

<hr>

### [deferred_shading_pfx](examples/advanced/deferred_shading_pfx)
<img src="examples/advanced/deferred_shading_pfx/deferred_shading_pfx.png" height="72px" align="right">

Traditional rendering algorithms submit geometry and immediately apply shading effects to the rasterized primitives. Complex shading effects may require multiple render passes to produce the final pixel color, with the geometry submitted every pass. Deferred shading is an alternative rendering technique that submits the scene geometry once, storing per-pixel attributes into local video memory to be used in the subsequent rendering passes. 
In these later passes, light volume primitives are rendered, and the per-pixel attributes contained in the buffer are retrieved at a 1:1 mapping ratio so that each pixel is shaded individually.
In the PowerVR architecture, the user can use fast on-chip memory instead of Multiple Render Targets, by utilising the Pixel Local Storage extension.
If running from a command line, add -forcemrt to force Multiple Render Targets rendering.
Requires at least OpenGL ES 3.0 capability for either MRT or PLS. Requires the extension GL_EXT_shader_pixel_local_storage for PLS.

APIS: Vulkan 1.0, OpenGL ES 3.0

Controls | Descriptions
-------- | ---
Action1 | Change the rendering mode (Object with bloom, object w/o bloom, bloom textures)
Action2 | Increase/Decrease bloom intensity
Quit    | Close the application

<hr>

### [example_ui](examples/advanced/example_ui)
<img src="examples/advanced/example_ui/example_ui.png" height="72px" align="right">

Rendering graphical user interfaces can quickly become overly complex. The PVREngineUtils can assist in rendering a lot of sprites with different complicated transformations, while remaining crisp and responsive. Usability and performance optimizations can both be foun in this example, such as UIRenderer transformation groups and texture atlases. Shaders available for OpenGL ES 2.x and 3.x.

APIS: Vulkan 1.0, OpenGL ES 2.0/3.0

Controls | Descriptions
-------- | ---
Left/Right | Change UI Page
Quit    | Close the application

<hr>

### [glass](examples/advanced/glass)
<img src="examples/advanced/glass/glass.png" height="72px" align="right">

This example shows a technique to maintain a dynamic environment map by rendering both hemispheres of the scene to two halves of a single rectangular texture. In addition, this also demonstrates rendering skyboxes with a full screen quad, reflection and refraction with chromatic dispersion. Shaders available for OpenGL ES 2.x and 3.x.

APIS: Vulkan 1.0, OpenGL ES 2.0/3.0

Controls | Descriptions
-------- | ---
Left/Right  | Change the effect between combinations of Reflection and Refraction/Chromatic Dispersion
Up/Down     | Look up or down
Quit        | Close the application

<hr>

### [gnome_horde](examples/advanced/gnome_horde)
<img src="examples/advanced/gnome_horde/gnome_horde.png" height="72px" align="right">

The GnomeHorde divides its world into tiles, each containing a small number of objects.
It uses 3 groups of threads - the Main thread, which kicks all other tasks and does the
actual command buffer submisison (rendering), a number of Visibility threads, each of 
which processes large groups of tiles, and a number of Tile Processing threads, each of
which generate command buffers for a tile, when required (i.e. when either the tile has
just become visible, or when the tile's Level Of Detail has changed).
The communication of the threads is abstracted using Producer-Consumer Queues passing the
coordinates of tiles as parameters.
When all generation is done, the main thread collects all secondary command buffers and
submits them to the GPU rendering Queue and allows the frame to proceed.

APIS: Vulkan 1.0

Controls | Descriptions
-------- | ---
Esc  | Close

<hr>

### [particle_system](examples/advanced/particle_system)
<img src="examples/advanced/particle_system/particle_system.png" height="72px" align="right">

The demo utilises GPGPU (GPU Compute) to implement a particle system, which advanced and then rendered every frame, without any CPU editing of the data. Particle systems are techniques that use a large amount of sprites to simulate phenomena that would be difficult to reproduce with conventional rendering techniques. Furthermore, it also highlights the interaction between the Compute and the Rendering part of a simulation.

APIS: OpenGL ES 3.1

Controls | Descriptions
-------- | ---
Quit  | Close demo
Lef/Right  | Decrease/increase number of particles
Up/Down  | Switch between GPU Compute and CPU Particle System implementation

<hr>

### [pvr_scope_example](examples/advanced/pvr_scope_example)
<img src="examples/advanced/pvr_scope_example/pvr_scope_example.png" height="72px" align="right">

This demo uses a simple PBR-style shader and shows the use of PVRScope that allows an application to return performance statistics from the GPU in real time. It uses the example graphing code to render a graph of the selected counters on the screen. For further details, refer to the PVRScope User Manual. 

APIS: OpenGL ES 2.0/3.0

Controls | Descriptions
-------- | ---
Quit     | Close demo
Up/Down  | Select a counter from the available list of HW counters
Action1  | Add/remove selected counter to the graph

<hr>

### [pvr_scope_remote](examples/advanced/pvr_scope_remote)
<img src="examples/advanced/pvr_scope_remote/pvr_scope_remote.png" height="72px" align="right">

This example shows how to use the editable data and custom mark functionality of PVRScope. PVRTune must be running and connected to an instance of PVRPerfServer running on the target device for this demo to function. You can then edit from the PVRTune GUI any variables that the application has exposed, in this case the shaders and material properties of the statue displayed.

APIS: OpenGL ES 2.0/3.0

Controls | Descriptions
-------- | ---
Quit     | Close demo
PVRTune  | Control demo variables through PVRTune


<hr>

### [skinning](examples/advanced/skinning)
<img src="examples/advanced/skinning/skinning.png" height="72px" align="right">

The Skinning demo shows a Skinned Character in combination with bump mapping. Skinning is the act of animating a vertex over time given a set (palette) of matrices and a known set of blend weights assigned to those matrices. For each frame the Matrix Palette is recomputed based on time. PVRAssets and POD files support skinning. either full transformation Matrices, or Quaternion rotation with Scaling and Translation vectors. The provided POD file contains matrix animation.
This example is using BoneBatching, which separates the mesh in smaller matrix palettes (Bone Batches) so that they can fit in the maximum number of allowed Uniform variables.
Up to 4 matrices  from the palette, along with 4 weights can used for each vertext by the vertex shader to update the position to obtain the current animation frame position.
Versions provided for Vulkan, OpenGL ES 2.0 and OpenGL ES 3.0

APIS: Vulkan 1.0, OpenGL ES 2.0/3.0

Controls | Descriptions
-------- | ---
Esc          | Close
Action1/2/3  | Pause
