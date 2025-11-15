-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lazy").setup({
  { "nvim-treesitter/nvim-treesitter", branch = "master", lazy = false, build = ":TSUpdate" },
})

local lspconfig = require("lspconfig")
lspconfig.clangd.setup({
  cmd = { "clangd", "--background-index", "--clang-tidy" },
  init_options = {
    fallbackFlags = { "-std=c17" },
  },
})

require("lspconfig").pyright.setup({})

-- rust_analyzer is managed by rustaceanvim, not lspconfig
-- require("lspconfig").rust_analyzer.setup({})

require("lspconfig").gopls.setup({
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end,
  settings = {
    gopls = {
      gofumpt = true,
    },
  },
})
