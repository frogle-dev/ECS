add_rules("mode.debug", "mode.release", "plugin.compile_commands.autoupdate")
set_languages("c++23")
set_toolchains("clang")

target("ECS")
set_kind("binary")
add_files("src/*.cpp", "src/*.cppm")

add_cxxflags("clang::-stdlib=libc++")
add_ldflags("clang::-stdlib=libc++")
