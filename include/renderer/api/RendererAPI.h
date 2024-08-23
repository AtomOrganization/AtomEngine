// src/renderer/api/RendererAPI.h
#pragma once

enum class API
{
  None = 0, // Pas d'API par défaut
  OpenGL = 1,
  Vulkan = 2,
  Metal = 3
};

class RendererAPI
{
public:
  virtual void Init() = 0;                                            // Initialisation spécifique à chaque API
  virtual void SetClearColor(float r, float g, float b, float a) = 0; // Définir la couleur de fond
  virtual void Clear() = 0;                                           // Effacer l'écran

  // Méthode statique pour créer l'API de rendu appropriée
  static RendererAPI *Create(API api);
};