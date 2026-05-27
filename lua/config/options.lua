-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.expandtab = false
vim.opt.relativenumber = false
vim.opt.shiftwidth = 0
vim.opt.tabstop = 8
vim.opt.wrap = true
vim.diagnostic.enable(false)
vim.g.autoformat = false
vim.g.cscope_maps_statusline_indicator = true
vim.cmd('highlight link @lsp.type.comment.cpp NONE')
vim.cmd('highlight link @lsp.type.comment.c NONE')
-- vim.api.nvim_set_hl(0, '@lsp.type.comment.c', {})
-- vim.g.lsp_semantic_enabled = 0
vim.g.minianimate_disable = true
