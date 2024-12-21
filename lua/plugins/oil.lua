return {
  {
    'stevearc/oil.nvim',
    opts = {
      columns = {
        'icon',
        'mtime',
      },
      view_options = {
        show_hidden = true,
      },
    },
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    vim.keymap.set('n', '<space>-', require('oil').toggle_float),
  },
}
