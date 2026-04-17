local helper = require 'helper'

---@type TodoOptions
local opts = {
  signs = false,
}

vim.pack.add { helper.gh 'folke/todo-comments.nvim' }

vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    vim.pack.add { helper.gh 'nvim-lua/plenary.nvim' }

    require('todo-comments').setup(opts)
  end,
})
