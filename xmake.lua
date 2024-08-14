-- Define the project
set_project("atom_engine")
set_version("0.0.1")
set_license("MIT")
set_languages("c++20")

includes("xmake/**.lua")

-- Define the target for building the DLL
target("build_DLL")
    set_filename("Atom.dll")
    set_kind("shared")
    add_files("src/Atom/*.cpp")
    add_includedirs("src/Atom/.")
    add_defines("ATOM_EXPORTS")
    set_targetdir("src/lib")

-- Define the target for building the static library
target("build_LIB")
    set_filename("Atom.lib")
    set_kind("static")
    add_files("src/Atom/*.cpp")
    add_includedirs("src/Atom/.")
    add_defines("ATOM_EXPORTS")
    set_targetdir("src/lib")