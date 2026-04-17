local helper = require 'helper'

local keymaps = {
  { 'n', '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>', {} },
  { 'n', '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>', {} },
  { 'n', '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>', {} },
  { 'n', '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>', {} },
  { 'n', '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>', {} },
}

vim.pack.add { helper.gh 'lervag/vimtex' }

require('vimtex').setup()

helper.add_keymaps(keymaps)
return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = 'zathura'
  end,
}
