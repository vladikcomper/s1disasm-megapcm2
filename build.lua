#!/usr/bin/env lua

-------------------------------------
-- Actual build script begins here --
-------------------------------------

local common = require "build_tools.lua.common"

-- Build the ROM.
common.build_rom_and_handle_failure("sonic", "s1built", "", "-p=FF", false, "https://github.com/sonicretro/s1disasm")

-- Append symbol table to the ROM.
local extra_tools = common.find_tools("debug symbol generator", "https://github.com/vladikcomper/md-modules", "https://github.com/sonicretro/s1disasm", "convsym")
if not extra_tools then
    os.exit(false)
end
os.execute(extra_tools.convsym .. " sonic.lst s1built.bin -input as_lst -range 0 FFFFFF -exclude -filter \"z[A-Z].+\" -a")

-- Correct the ROM's header with a proper checksum and end-of-ROM value.
common.fix_header("s1built.bin")

-- A successful build; we can quit now.
common.exit()
