return {
  {
    'folke/zen-mode.nvim',
    opts = {
      options = {
        signcolumn = 'yes',
        relativenumber = true,
        cursorline = true,
      },
      wezterm = {
        enabled = true,
        -- can be either an absolute font size or the number of incremental steps
        font = '+4', -- (10% increase per step)
      },
    },
  },
}
