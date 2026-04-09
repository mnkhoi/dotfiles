local helper = require 'helper'

local opts = {
  options = {
    diagnostics = 'nvim_lsp',
    always_show_bufferline = false,
  },
}

local keymaps = {
  { 'n', '<leader>bp', '<Cmd>BufferLineTogglePin<CR>', { desc = 'Toggle Pin' } },
  { 'n', '<leader>bP', '<Cmd>BufferLineGroupClose ungrouped<CR>', { desc = 'Delete Non-Pinned Buffers' } },
  { 'n', '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>', { desc = 'Delete Other Buffers' } },
  { 'n', '<leader>br', '<Cmd>BufferLineCloseRight<CR>', { desc = 'Delete Buffers to the Right' } },
  { 'n', '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', { desc = 'Delete Buffers to the Left' } },
  { 'n', '<leader>bR', '<Cmd>BufferLineTabRename<CR>', { desc = 'Rename Buffer' } },
  { 'n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Prev Buffer' } },
  { 'n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next Buffer' } },
  { 'n', '[B', '<cmd>BufferLineMovePrev<cr>', { desc = 'Move buffer prev' } },
  { 'n', ']B', '<cmd>BufferLineMoveNext<cr>', { desc = 'Move buffer next' } },
}

vim.pack.add { helper.gh 'akinsho/bufferline.nvim' }

--- Run on enter
vim.api.nvim_create_autocmd('VimEnter', {
  once = true,
  callback = function()
    require('bufferline').setup(opts)
    helper.add_keymaps(keymaps)
    vim.api.nvim_create_autocmd({ 'BufAdd', 'BufDelete' }, {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end,
    })
  end,
})
