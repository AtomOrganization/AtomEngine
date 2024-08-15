add_rules("mode.debug", "mode.release")
set_project("AtomEngine")

target("AtomEngine")
    set_kind("static")
    set_languages("cxx20")
    add_files("src/*.cpp")
    add_includedirs("include")

    -- telecharge le script json lua
    --before_build(function (target)
    --    os.exec("curl -L --fail --retry 3 --progress-bar -o json.lua https://raw.githubusercontent.com/AtomOrganization/AtomUtils/main/scripts-lua/json.lua")
    --    os.exec("mkdir -p utils/scripts-lua")
    --    os.cp("json.lua", "utils/scripts-lua/json.lua")
    --end)

after_install(function (package)
    -- Copy headers include folder in package folder
    os.cp("include", package:installdir("include"))
    -- Copy utils from AtomUtils in package folder
    -- os.cp("utils", package:installdir("utils"))
end)