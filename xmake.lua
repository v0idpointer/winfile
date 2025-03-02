target("Winfile")
    set_default(true)
    set_kind("binary")
    add_files("src/*.c", "src/*.cpp", "src/*.rc")
    add_includedirs("src")
    add_defines("UNICODE", "_UNICODE", "LFN", "FASTMOVE", "USELASTDOT", "MEMDOUBLE")
    add_links(
        "Kernel32.lib",
        "Advapi32.lib",
        "User32.lib",
        "Gdi32.lib",
        "Shell32.lib",
        "Shlwapi.lib",
        "Comctl32.lib",
        "Version.lib",
        "Ole32.lib",
        "OleAut32.lib"
    )

target("ExeView")
    set_default(false)
    set_kind("binary")
    add_files("tools/ExeView/*.cpp", "tools/ExeView/*.rc")
    add_links(
        "Kernel32.lib",
        "User32.lib",
        "Gdi32.lib",
        "Comdlg32.lib"
    )

target("FileSignatureInfo")
    set_default(false)
    set_kind("binary")
    add_files("tools/FileSignatureInfo/*.cpp")
    add_defines("UNICODE", "_UNICODE")

target("VerifyResources")
    set_default(false)
    set_kind("binary")
    add_files("tools/VerifyResources/*.cpp")
    add_defines("UNICODE", "_UNICODE")
    add_links("User32.lib")

target("AddonSample")
    set_default(false)
    set_kind("shared")
    add_files("samples/addon/*.cpp", "samples/addon/*.rc")
    add_defines("UNICODE", "_UNICODE")
    add_links("User32.lib")
