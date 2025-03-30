local status_ok, toggleterm = pcall(require, 'toggleterm')
if not status_ok then
  return
end

toggleterm.setup {
  size = 20,
  open_mapping = [[<leader><Tab>]],
  hide_numbers = true,
  shade_terminals = true,
  shading_factor = 10,
  start_in_insert = true,
  insert_mappings = false,
  terminal_mappings = true,
  persist_size = true,
  direction = 'float',
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = 'curved',
    winblend = 0,
  },
}

-- Set keymaps for terminal buffers
-- Similar to what I have in init.lua, but with the addition of q to quit in normal mode
-- Not sure if the hjkl binds are redundant or not
-- From toggleterm github
function _G.set_terminal_keymaps()
  local opts = { noremap = true }
  vim.api.nvim_buf_set_keymap(0, 't', '<esc><esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
  vim.api.nvim_buf_set_keymap(0, 'n', 'q', '<cmd>close<CR>', { noremap = true, silent = true })
end

vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'

local Terminal = require('toggleterm.terminal').Terminal
local gitterm = Terminal:new {
  dir = 'git_dir',
  direction = 'float',
  float_opts = {
    border = 'curved',
  },
  on_open = function()
    vim.cmd 'startinsert!'
  end,
}

function _gitterm_toggle()
  gitterm:toggle()
end

-- Open custom terminal gitterm using leader tab.
vim.api.nvim_set_keymap('n', '<leader><Tab>', '<cmd>lua _gitterm_toggle()<CR>', { noremap = true, silent = true })
