local helper = require 'helper'

vim.pack.add { helper.gh 'wakatime/vim-wakatime' }

require('wakatime').setup()
