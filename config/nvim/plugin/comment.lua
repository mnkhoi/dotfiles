local helper = require 'helper'

vim.pack.add { helper.gh 'numToStr/Comment.nvim' }

require('Comment').setup()
