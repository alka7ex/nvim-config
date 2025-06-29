return {
  {
    'stevearc/conform.nvim',
    event = 'BufReadPre', -- or use a different event as needed
    config = function()
      require('conform').setup {
        formatters_by_ft = {
          javascript = { 'prettierd' },
          typescript = { 'prettierd' },
          typescriptreact = { 'prettierd' },
          css = { 'prettierd' },
          html = { 'prettierd' },
          json = { 'prettierd' },
          markdown = { 'prettierd' },
          lua = { 'stylua' }, -- use Stylua for Lua
          php = { 'pint' },
          -- Remove the lua entry so that conform falls back to LSP formatting for Lua
          -- lua         = { 'lua_ls' },
        },
        -- Format on save configuration:
        format_on_save = {
          lsp_fallback = true, -- Use LSP formatting if no external formatter is found
          async = false, -- Run formatting synchronously (set to true if you prefer async formatting)
          timeout_ms = 1000, -- Maximum time (in ms) to wait for formatting
        },
      }
    end,
  },
}
