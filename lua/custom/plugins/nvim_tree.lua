return {
  -- ... other plugins ...
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = true,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    keys = {
      {
        '<leader>e',
        function()
          require('nvim-tree').setup()
          vim.cmd 'NvimTreeToggle'
        end,
        desc = 'Toggle NvimTree',
      },
    },
  },
  -- ... other plugins ...
}
