require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i" }, "<M-b>", function()
    require("nvchad.term").runner({ pos = "float", cmd = "zig build run && exit", id = "build", clear_cmd = true })
end)

map("n", "<leader>ds", vim.diagnostic.setloclist, { desc = "LSP diagnostic loclist" })
map("n", "<leader>dv", vim.diagnostic.open_float(0, { scope = "line" }), { desc = "LSP diagnostic show float" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
