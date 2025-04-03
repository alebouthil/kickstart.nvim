return {
  {
    'folke/zen-mode.nvim',
    opts = {
      window = {
        options = {
          signcolumn = 'yes',
          relativenumber = true,
          cursorline = true,
        },
      },
      plugins = {
        wezterm = {
          enabled = true,
          -- can be either an absolute font size or the number of incremental steps
          font = '+2', -- (10% increase per step)
        },
      },
    },
  },
}
