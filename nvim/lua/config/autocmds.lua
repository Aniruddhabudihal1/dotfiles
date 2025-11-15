-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Helper function to reload Lua modules (useful for development)
-- Usage: :lua ReloadModule("config.keymaps")
function _G.ReloadModule(module_name)
  package.loaded[module_name] = nil
  require(module_name)
  vim.notify("Reloaded: " .. module_name, vim.log.levels.INFO)
end

-- Create a command for easy access
vim.api.nvim_create_user_command("ReloadModule", function(opts)
  ReloadModule(opts.args)
end, { nargs = 1, complete = "lua" })

