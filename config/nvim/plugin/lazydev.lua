local helper = require 'helper'

---@type lazydev.Config
local opts = {
  library = {
    -- Load luvit types when the `vim.uv` word is found
    { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
  },
}

vim.pack.add { helper.gh 'folke/lazydev.nvim' }

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'lua',
  callback = function()
    require('lazydev').setup(opts)
  end,
})
