# AtomEngine 
[![macos build](https://github.com/AtomOrganization/AtomEngine/actions/workflows/macos-build.yml/badge.svg?branch=main)](https://github.com/AtomOrganization/AtomEngine/actions/workflows/macos-build.yml)

## Structure du Projet

```plaintext
ProjectRoot/
├── src/                        # Code source principal du moteur
│   ├── AtomEngine.cpp          # Point d'entrée du moteur
│   ├── core/                   # Composants de base du moteur
│   │   ├── application/        # Point d'entrée du moteur et boucle principale
│   │   ├── window/             # Gestion des fenêtres
│   │   ├── input/              # Gestion des entrées utilisateur (clavier, souris)
│   │   ├── math/               # Fonctions mathématiques (vecteurs, matrices)
│   ├── renderer/               # Composants liés au rendu graphique
│   │   ├──  api/
│   │   │   ├── RendererAPI.h       # Interface commune pour les API de rendu
│   │   │   ├── OpenGLRenderer.cpp  # Implémentation OpenGL de l'interface
│   │   │   ├── VulkanRenderer.cpp  # Implémentation Vulkan de l'interface
│   │   │   └── MetalRenderer.cpp   # Implémentation Metal de l'interface
│   │   ├── RenderCommand.h         # Abstraction des commandes de rendu
│   │   ├── shaders/            # Gestion des shaders
│   │   ├── mesh/               # Gestion des maillages 3D
│   │   ├── texture/            # Gestion des textures
│   ├── scene/                  # Gestion des scènes, entités, et systèmes
│   │   ├── entity/             # Gestion des entités (objets de la scène)
│   │   ├── components/         # Composants des entités (position, rotation, etc.)
│   │   └── systems/            # Systèmes opérant sur les entités (rendu, physique, etc.)
│   ├── utils/                  # Fonctions utilitaires (fichiers, logs, timers)
│   └── platform/               # Code spécifique aux plateformes
│       ├── windows/            # Implémentations spécifiques à Windows
│       ├── macos/              # Implémentations spécifiques à macOS
│       └── linux/              # Implémentations spécifiques à Linux
├── assets/                     # Ressources du moteur (shaders, textures, modèles)
│   ├── shaders/                # Shaders utilisés par le moteur
│   ├── textures/               # Textures utilisées dans les scènes
│   └── models/                 # Modèles 3D
├── include/                    # Fichiers d'en-tête partagés
├── build/                      # Dossier pour les fichiers de build (binaires, objets)
├── docs/                       # Documentation du projet
└── tests/                      # Tests unitaires et d'intégration
└── examples/                   # Examples d'intégration du moteur
```
## Commands
    cmake -S . -B build
    cmake --build build --clean-first
