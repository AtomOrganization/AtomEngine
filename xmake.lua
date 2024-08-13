-- Define the project
set_project("Atom")
set_languages("c++20")
set_version("2.0.0")

-- Define the target for building the DLL
target("build_DLL")
    set_filename("Atom.dll")
    set_kind("shared")
    add_files("src/Atom/*.cpp")
    add_includedirs("src/Atom/.")
    add_defines("ATOM_EXPORTS")
    set_targetdir("src/dll")
