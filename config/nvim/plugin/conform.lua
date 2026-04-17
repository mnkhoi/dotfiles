local helper = require 'helper'

---@module 'conform'
---@type conform.setupOpts
local opts = {
  notify_on_error = false,
  format_on_save = function(bufnr)
    local disable_filetypes = { c = true, cpp = true }
    if disable_filetypes[vim.bo[bufnr].filetype] then
      return nil
    else
      return {
        timeout_ms = 500,
        lsp_format = 'fallback',
      }
    end
  end,
  formatters_by_ft = {
    lua = { 'stylua' },
    python = { 'black' },
  },
}

local keymaps = {
  {
    '',
    '<leader>f',
    function()
      require('conform').format { async = true, lsp_format = 'fallback' }
    end,
    {
      desc = '[F]ormat buffer',
    },
  },
}

vim.pack.add { helper.gh 'stevearc/conform.nvim' }

vim.api.nvim_create_autocmd('BufWritePre', {
  once = true,
  callback = function()
    require('conform').setup(opts)
    helper.add_keymaps(keymaps)
  end,
})
