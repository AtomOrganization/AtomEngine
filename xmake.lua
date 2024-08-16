add_rules("mode.debug", "mode.release")
set_project("AtomEngine")
set_defaultmode("debug")

target("AtomEngine")
    set_kind("static")
    set_languages("cxx20")
    --add_cxflags("-mmacosx-version-min=14.5")
    --add_ldflags("-mmacosx-version-min=14.5")
    add_files("src/*.cpp")
    add_includedirs("include","utils")
    add_links("glfw3")
    add_linkdirs("lib")
    add_frameworks("OpenGL")
    -- Download json.lua from AtomUtils, sample for integrate custom script
    --before_build(function (target)
    --    os.exec("curl -L --fail --retry 3 --progress-bar -o json.lua https://raw.githubusercontent.com/AtomOrganization/AtomUtils/main/scripts-lua/json.lua")
    --    os.exec("mkdir -p utils/scripts-lua")
    --    os.cp("json.lua", "utils/scripts-lua/json.lua")
    --end)

-- add to package
after_install(function (package)
    -- Copy headers include folder in package folder
    os.cp("include", package:installdir("include"))
    -- Copy utils from AtomUtils in package folder
    -- os.cp("utils", package:installdir("utils"))
end)