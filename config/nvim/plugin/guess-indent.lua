local helper = require 'helper'

vim.pack.add { helper.gh 'NMAC427/guess-indent.nvim' }

require('guess-indent').setup()
