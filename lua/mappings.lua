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

-- Prevents the commands that delete content to also yank it.
-- The old behavior yanking the deleted content is mapped to <leader> + <command>.
-- Only the x command is not remapped since it conflicts with closing a buffer.
--
map("n", "x", "\"_x", { desc = "Delete character"})
map("n", "d", "\"_d", { desc = "Delete text"})
map("v", "d", "\"_d", { desc = "Delete text"})
map("n", "D", "\"_D", { desc = "Delete line"})

map("n", "<leader>d", "\"\"d", { desc = "Delete and yank text"})
map("v", "<leader>d", "\"\"d", { desc = "Delete and yank text"})
map("n", "<leader>D", "\"\"D", { desc = "Delete and yank line"})

-- Somehow the combination of tmux + nvim blocks the <C-End> command
-- Please use <Alt-Gr> + <Shift> + o/u to go the beginning or end of line
