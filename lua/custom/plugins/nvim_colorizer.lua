return {
  {
    'norcalli/nvim-colorizer.lua',
    event = 'BufReadPre', -- Lazy-load on buffer read
    config = function()
      require('colorizer').setup { '*' } -- Enable for all filetypes; customize as needed
    end,
  },
}
