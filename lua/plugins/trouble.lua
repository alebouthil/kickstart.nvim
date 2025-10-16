return {
  {
    'folke/trouble.nvim',
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = 'Trouble',
    keys = {
      {
        '<leader>cD',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = '[C]ode [D]iagnostics (Project)',
      },
      {
        '<leader>cd',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = '[C]ode [D]iagnostics (Buffer)',
      },
      {
        '<leader>cs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = '[S]ymbols (Trouble)',
      },
      {
        '<leader>cl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = '[C]ode [L]SP Definitions / references / ... (Trouble)',
      },
      {
        '<leader>ge',
        '<cmd>Trouble loclist toggle<cr>',
        desc = '[G]oto [E]rrors (Trouble)',
      },
      {
        '<leader>td',
        '<cmd>Trouble todo toggle<cr>',
        desc = '[T]o [D]o',
      },
      {
        '<leader>Q',
        '<cmd>Trouble qflist toggle<cr>',
        desc = '[Q]uickfix List (Trouble)',
      },
    },
  },
}
