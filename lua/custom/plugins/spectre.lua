return {
  'nvim-pack/nvim-spectre',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('spectre').setup {
      open_file = {
        command = 'vsplit', -- or "split" or "tabedit"
      },
      live_update = true, -- Update results as you type
      -- ... other options ...
    }
  end,
}
