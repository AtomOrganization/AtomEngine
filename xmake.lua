add_rules("mode.debug", "mode.release")
set_project("AtomEngine")
set_defaultmode("debug")

add_requires("glfw")
add_requires("opengl")

target("AtomEngine")
    set_kind("static")
    set_languages("cxx20")
    --add_cxflags("-mmacosx-version-min=14.5")
    --add_ldflags("-mmacosx-version-min=14.5")
    add_files("src/*.cpp")
    add_includedirs("include")
    add_packages("glfw", "opengl")

-- add to package
after_install(function (package)
    -- Copy headers include folder in package folder
    os.cp("include", package:installdir("include"))
    -- Copy utils from AtomUtils in package folder
    -- os.cp("utils", package:installdir("utils"))
end)