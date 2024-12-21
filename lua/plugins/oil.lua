return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup {
        columns = { 'icon', 'date' },
        view_options = {
          show_hidden = true,
        },
      }
    end,
  },
}
