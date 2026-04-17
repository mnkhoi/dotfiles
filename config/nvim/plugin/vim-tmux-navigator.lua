local helper = require 'helper'

local keymaps = {
  { 'n', '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>', {} },
  { 'n', '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>', {} },
  { 'n', '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>', {} },
  { 'n', '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>', {} },
  { 'n', '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>', {} },
}

vim.pack.add { helper.gh 'christoomey/vim-tmux-navigator' }

helper.add_keymaps(keymaps)
