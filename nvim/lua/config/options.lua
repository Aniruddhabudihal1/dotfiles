-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable LazyVim's default diagnostic virtual text
vim.g.lazyvim_diagnostic_virtual_text = false

-- Apply diagnostic config after LSP attaches
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function()
    vim.diagnostic.config({
      virtual_text = false,
      virtual_lines = { current_line = true },
      severity_sort = true,
    })
  end,
})
