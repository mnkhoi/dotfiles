local helper = require 'helper'

--- @module 'blink.cmp'
--- @type blink.cmp.Config
local opts = {
  keymap = {
    preset = 'default',
  },

  appearance = {
    nerd_font_variant = 'mono',
  },

  completion = {
    documentation = { auto_show = false, auto_show_delay_ms = 500 },
  },

  sources = {
    default = { 'lsp', 'path', 'snippets', 'lazydev' },
    providers = {
      lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
    },
  },

  snippets = { preset = 'luasnip' },

  fuzzy = { implementation = 'lua' },

  signature = { enabled = true },
}

vim.pack.add { { src = helper.gh 'saghen/blink.cmp', version = vim.version.range '1.x' } }
vim.api.nvim_create_autocmd('VimEnter', {
  once = true,
  callback = function()
    vim.pack.add {
      { src = helper.gh 'L3MON4D3/LuaSnip', version = vim.version.range 'v2.x' },
      helper.gh 'folke/lazydev.nvim',
    }
    require('luasnip').setup()
    require('lazydev').setup()
  end,
})

require('blink').setup(opts)
