local helper = require 'helper'

vim.pack.add { helper.gh 'stevearc/oil.nvim' }

vim.api.nvim_create_autocmd('VimEnter', {
  once = true,
  callback = function()
    vim.pack.add { helper.gh 'echasnovski/mini.icons' }
    require('mini.icons').setup()

    require('oil').setup()

    helper.add_keymaps {
      { 'n', '<leader>o', '<cmd>Oil<cr>', { desc = 'Oil' } },
    }
  end,
})
