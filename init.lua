require("config.lazy")
require("config.tabsize")

local fzf = require('fzf-lua')
local tree = require('nvim-tree.api')


vim.opt.number = true
vim.opt.wrap = false

-----------------
-- Keybindings --
-----------------

-- Saving
vim.keymap.set({'n', 'i', 'v'}, '<D-s>', '<cmd>w<cr><esc>', { desc = 'Save' })

-- Files
vim.keymap.set('n', '<D-p>', fzf.files, { desc = 'Files' })

-- Actions
vim.keymap.set('n', '<D-P>', fzf.commands, { desc = 'Actions' })

-- Search 
vim.keymap.set('n', '<D-f>', fzf.lgrep_curbuf, { desc = 'Search' })
vim.keymap.set('n', '<D-F>', fzf.live_grep, { desc = 'Find in Files' })

-- File Explorer
vim.keymap.set('n', '<D-e>', tree.tree.toggle, { desc = 'Toggle Explorer' })

-- Run Test
vim.keymap.set('n', '<leader>tn', function() 
  require('neotest').run.run() 
end)

-- Run Test File
vim.keymap.set('n', '<leader>tf', function()
  require('neotest').run.run(vim.fn.expand('%'))
end)
