// src/renderer/api/RendererAPI.cpp
#include "RendererAPI.h"
#include "OpenGLRenderer.cpp"
#include "VulkanRenderer.cpp"
#include "MetalRenderer.cpp"

RendererAPI *RendererAPI::Create(API api)
{
  switch (api)
  {
  case API::OpenGL:
    return new OpenGLRenderer();
  case API::Vulkan:
    return new VulkanRenderer();
  case API::Metal:
    return new MetalRenderer();
  case API::None:
  default:
    return nullptr;
  }
}