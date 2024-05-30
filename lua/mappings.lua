require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- custom

-- moves yanking behavior in normal mode to ctrl + x
map("n", "<C-c>", "", { desc = "Nothing" })
map("n", "<C-x>", 'gg"+yG', { desc = "Yank entire file" })
