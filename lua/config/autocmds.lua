-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Set correct indentation for RST files
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("Rst_file_defaults", { clear = true }),
  pattern = { "rst" },
  callback = function()
    vim.opt_local.tabstop = 3
    vim.opt_local.shiftwidth = 3
    vim.opt_local.expandtab = true
  end,
})
