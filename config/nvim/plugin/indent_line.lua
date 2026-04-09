local helper = require 'helper'

---@module "ibl"
---@type ibl.config
local opts = {}

vim.pack.add { helper.gh 'lukas-reineke/indent-blankline.nvim' }

require('ibl').setup(opts)
