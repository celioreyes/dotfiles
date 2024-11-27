require("nvchad.options")

-- add yours here!
require("nvchad.options")
-- add yours here!
local o = vim.o
-- Indenting
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

local g = vim.g
if g.neovide then
    g.neovide_input_macos_option_key_is_meta = "only_left"
    g.neovide_cursor_trail_size = 0
    g.neovide_transparency = 0.9
end

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
