local helper = require 'helper'

---@type lazygit.
local opts = {
  library = {
    -- Load luvit types when the `vim.uv` word is found
    { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
  },
}

local keymaps = {
  { 'n', '<leader>lg', '<cmd>LazyGit<cr>', { desc = 'LazyGit' } },
}

vim.pack.add { helper.gh 'kdheepak/lazygit.nvim' }

vim.api.nvim_create_user_command('LazyGit', function()
  vim.pack.add { helper.gh 'nvim-lua/plenary.nvim' }
  require('plenary').setup()
  require('lazygit').setup()
end, { desc = 'Open up lazygit' })

-- Dependencies

helper.add_keymaps(keymaps)
