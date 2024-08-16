cmake_minimum_required(VERSION 3.15...3.30)

# Project name
project(
  AtomEngine 
  VERSION 1.0
  DESCRIPTION "Atom Engine"
  LANGUAGES CXX
)

# Spécifier le standard C++20
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Define source and include directories
set(ATOM_ENGINE_SRC src/AtomEngine.cpp)
set(ATOM_ENGINE_INCLUDE ${CMAKE_CURRENT_SOURCE_DIR}/include)

# Add the AtomEngine library
add_library(AtomEngine STATIC ${ATOM_ENGINE_SRC})

# Add OpenGLWrapper as a subdirectory
add_subdirectory(../AtomUtils/Libraries/OpenGLWrapper ${CMAKE_BINARY_DIR}/OpenGLWrapper)

# Link the OpenGLWrapper library
target_link_libraries(AtomEngine PRIVATE OpenGLWrapper)

# Set the include directories for AtomEngine
target_include_directories(AtomEngine PUBLIC ${ATOM_ENGINE_INCLUDE})
target_include_directories(AtomEngine PRIVATE ../AtomUtils/Libraries/OpenGLWrapper/include)

# Build examples
if(BUILD_EXAMPLES)
  add_executable(AtomEngineExample ../examples/hello_world.cpp)
  target_link_libraries(AtomEngineExample PUBLIC AtomEngine)
  target_include_directories(AtomEngineExample PRIVATE ../AtomUtils/Libraries/OpenGLWrapper/include)
endif()