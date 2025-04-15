vim.api.nvim_create_autocmd('User', {
  pattern = 'OilEnter',
  callback = vim.schedule_wrap(function(args)
    local oil = require 'oil'
    if vim.api.nvim_get_current_buf() == args.data.buf and oil.get_cursor_entry() then
      oil.open_preview()
    end
  end),
})
