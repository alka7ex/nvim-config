return {
  {
    'mfussenegger/nvim-lint',
    event = 'BufRead',
    config = function()
      -- Set ESLINT_D_PPID so that eslint_d correctly identifies the Neovim process
      vim.env.ESLINT_D_PPID = vim.fn.getpid()

      require('lint').linters_by_ft = {
        lua = { 'luacheck' },
        python = { 'flake8' },
        javascript = { 'eslint_d' },
        typescript = { 'eslint_d' },
        typescriptreact = { 'eslint_d' },
      }
      vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
        callback = function()
          require('lint').try_lint()
        end,
      })
    end,
  },
}
