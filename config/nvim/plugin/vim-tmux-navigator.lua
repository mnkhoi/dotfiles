local helper = require 'helper'

local keymaps = {
  { '', '<c-h>', '<cmd>TmuxNavigateLeft<cr>', {} },
  { '', '<c-j>', '<cmd>TmuxNavigateDown<cr>', {} },
  { '', '<c-k>', '<cmd>TmuxNavigateUp<cr>', {} },
  { '', '<c-l>', '<cmd>TmuxNavigateRight<cr>', {} },
  { '', '<c-\\>', '<cmd>TmuxNavigatePrevious<cr>', {} },
}

vim.pack.add { helper.gh 'christoomey/vim-tmux-navigator' }

helper.add_keymaps(keymaps)
