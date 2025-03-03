-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Redo
vim.keymap.set("n", "U", "<C-r>", { desc = "Redo", silent = false })

-- Move to start/end of line
vim.keymap.set({ "n", "v" }, "H", "<Home>", { desc = "StartOfLine", silent = true })
vim.keymap.set({ "n", "v" }, "L", "<End>", { desc = "EndOfLine", silent = true })

-- buffers
vim.keymap.set("n", "<A-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<A-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
