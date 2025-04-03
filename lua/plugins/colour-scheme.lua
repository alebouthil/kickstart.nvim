return {
  {
    'thesimonho/kanagawa-paper.nvim',
    name = 'kanagawa-paper',
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    -- Change the name of the colorscheme plugin below, and then
    'bluz71/vim-nightfly-colors',
    name = 'nightfly',
    lazy = false,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'kanagawa-paper'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
