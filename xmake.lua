add_rules("mode.debug", "mode.release")
set_project("AtomEngine")

target("AtomEngine")
    set_kind("static")
    set_languages("cxx20")
    add_files("src/*.cpp")
    add_includedirs("include")

after_install(function (package)
    os.cp("include", package:installdir("include"))
end)