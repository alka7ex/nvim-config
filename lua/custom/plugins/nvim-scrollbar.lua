return {
  'petertriho/nvim-scrollbar',
  config = function()
    require('scrollbar').setup()
  end,
  dependencies = { 'neovim/nvim-lsp' }, -- Ensure you have the built-in LSP client
}
