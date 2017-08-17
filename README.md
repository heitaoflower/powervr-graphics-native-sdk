<img src="https://img.shields.io/badge/license-MIT-blue.svg" title="license-mit" />
# powervr-graphics-native-sdk 
C++ cross-platform 3D graphics SDK. Includes demos &amp; helper code (resource loading etc.) to speed up development of Vulkan, OpenGL ES 1.x, 2.0 &amp; 3.x applications

# Examples

*Examples marked with :speech_balloon: offer additional details with a separate readme.*

## Basics

### [Triangle](triangle/)
<img src="./examples/beginner/01_hello_api/hello_api.png" height="72px" align="right">

Most basic example. Renders a colored triangle using an indexed vertex buffer. Vertex and index data are uploaded to device local memory using so-called "staging buffers". Uses a single pipeline with basic shaders loaded from SPIR-V and and single uniform block for passing matrices that is updated on changing the view.

This example is far more explicit than the other examples and is meant to be a starting point for learning Vulkan from the ground up. Much of the code is boilerplate that you'd usually encapsulate in helper functions and classes (which is what the other examples do).
