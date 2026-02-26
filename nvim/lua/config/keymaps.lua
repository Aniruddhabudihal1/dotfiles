-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Exit terminal mode with Ctrl + Space
vim.keymap.set("t", "<C-Space>", [[<C-\><C-n>]], { silent = true })
