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
set(BUILD_EXAMPLES ON)

# Define source and include directories
set(ATOM_ENGINE_SRC src/AtomEngine.cpp)
set(ATOM_ENGINE_INCLUDE ${CMAKE_CURRENT_SOURCE_DIR}/include)

# Define the AtomEngine library
add_library(AtomEngine ${ATOM_ENGINE_SRC})

# Specify include directories for AtomEngine
target_include_directories(AtomEngine PUBLIC ${ATOM_ENGINE_INCLUDE})

# Build examples
if(BUILD_EXAMPLES)
  add_executable(HelloWorld ../examples/hello_world/hello_world.cpp)
  target_link_libraries(HelloWorld PUBLIC AtomEngine)
  target_include_directories(HelloWorld PRIVATE ${ATOM_ENGINE_INCLUDE})
    # Set the output directory for the HelloWorld executable
  set_target_properties(HelloWorld PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/examples/hello_world
  )
endif()