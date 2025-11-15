return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}
    -- Exclude rust-analyzer to avoid conflicts with rustaceanvim
    local exclude = { "rust-analyzer" }
    opts.ensure_installed = vim.tbl_filter(function(tool)
      return not vim.tbl_contains(exclude, tool)
    end, opts.ensure_installed)
  end,
}