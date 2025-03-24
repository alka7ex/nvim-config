return {
  -- ... other plugins ...
  {
    'brianhuster/autosave.nvim',
    event = 'InsertEnter',
    opts = {
      g = {
        autosave_enabled = true,
      },
    },
  },
  -- ... other plugins ...
}
