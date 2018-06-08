-- This file was automatically generated for the LuaDist project.

package = "lua-ttyrant"
version = "1.0-1"
-- LuaDist source
source = {
  tag = "1.0-1",
  url = "git://github.com/LuaDist-testing/lua-ttyrant.git"
}
-- Original source
-- source = {
--     url = "git://github.com/valeriupalos/lua-ttyrant.git"
-- }
description = {
    summary = "TokyoTyrant API for Lua.",
    detailed = [[
        A complete API binding exposing the functions from the
        C library of the TokyoTyrant key-value database server
        straight into Lua (i.e. it uses the Tyrant C functions
        rather than implementing the Tyrant protocol over TCP).
    ]],
    homepage = "http://github.com/valeriupalos/lua-ttyrant",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
external_dependencies = {
    LIBTOKYOTYRANT = {
        header = "tcrdb.h",
    }
}
supported_platforms = {
    "linux"
}
build = {
    type = "builtin",
    modules = {
        ttyrant = {
            incdirs = { "$(LIBTOKYOTYRANT_INCDIR)" },
            libdirs = { "$(LIBTOKYOTYRANT_LIBDIR)" },
            sources = { "src/ttyrant.c" },
            libraries = { "tokyotyrant" }
        }
    }
}