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

-- Terminal split right
-- vim.keymap.set("n", "<leader>ft", 
--   function() Snacks.terminal(nil, { win = { position = "right" }}) end, 
-- { desc = "Terminal right" })

-- Update terminal toggle keybinding to use toggleterm
-- vim.keymap.set({"n", "t"}, "<C-/>", '<cmd>ToggleTerm<cr>', {desc = "ToggleTerm"})

-- Terminal mode navigation
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
vim.keymap.set("t", "<c-h>", "<cmd>wincmd h<cr>", { desc = "Go to left window"})
vim.keymap.set("t", "<c-j>", "<cmd>wincmd j<cr>", { desc = "Go to lower window"})
vim.keymap.set("t", "<c-k>", "<cmd>wincmd k<cr>", { desc = "Go to upper window"})
vim.keymap.set("t", "<c-l>", "<cmd>wincmd l<cr>", { desc = "Go to right window"})
vim.keymap.set('t', '<c-w>', [[<c-\><c-n><c-w>]], { desc = "Terminal Window Mappings"})

-- Single line formatting
vim.keymap.set('v', '<c-f>', vim.lsp.buf.format, bufopts)
