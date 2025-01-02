-- Modified from typecraft-dev dotfiles and kickstart defaults

return {
  { -- install Mason to manage lSPs
    'williamboman/mason.nvim',
    lazy = false,
    config = function()
      require('mason').setup()
    end,
  },
  { -- Use mason-lspconfig to connect lspconfig and mason
    'williamboman/mason-lspconfig.nvim',
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  { -- Set up lspconfig and add blinkcmp capabilities
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },
    lazy = false,
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      local lspconfig = require 'lspconfig'

      -- Kept as examples
      --      lspconfig.tailwindcss.setup {
      --        capabilities = capabilitijs,
      --      }
      --      lspconfig.ruby_lsp.setup {
      --        capabilities = capabilitijs,
      --        cmd = { '/home/typecraft/.asdf/shims/ruby-lsp' },
      --      }

      lspconfig.html.setup {
        capabilities = capabilities,
      }
      lspconfig.lua_ls.setup {
        capabilities = capabilities,
      }
      lspconfig.v_analyzer.setup {
        capabilities = capabilities,
      }
      lspconfig.pylsp.setup {
        capabilities = capabilities,
      }
      lspconfig.clangd.setup {
        capabilities = capabilities,
      }

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
    end,
  },
}
