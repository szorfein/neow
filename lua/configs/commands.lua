--local f = require('utils.functions')
--local r = require('utils.remaps')
local map = vim.keymap.set

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Close active and all others, à=0, &=1, é=2, "=3 on french keyboard layout
-- Todo: different files for different layout?
map('n', '<C-x>à', '<C-w>q')
map('n', '<C-x>&', '<C-w>o')
map('n', '<C-x>é', '<C-w>s')
map('n', '<C-x>"', '<C-w>v')

-- Move around splits using Shift + {h,j,k,l}
map('n', '<S-h>', '<C-w>h')
map('n', '<S-j>', '<C-w>j')
map('n', '<S-k>', '<C-w>k')
map('n', '<S-l>', '<C-w>l')

-- move start, end line
map({ 'i', 'n' }, '<C-a>', '<Home>', { silent = true, desc = 'move begin line' })
map({ 'i', 'n' }, '<C-e>', '<End>', { silent = true, desc = 'move end line' })
map('i', '<C-j>', '<Down>', { desc = 'move down' })
map({ 'i', 'n' }, '<C-k>', '<Up>', { desc = 'move up' })

-- backward-word
map({ 'i', 'n' }, '<M-h>', '<C-Left>', { silent = true, desc = 'move backward-word' })

-- forward-word
map({ 'i', 'n' }, '<M-l>', '<C-Right>', { silent = true, desc = 'move forward-word' })

-- Buffers
-- docs about vim buffer: https://readmedium.com/neovim-for-beginners-managing-buffers-91367668ce7
map('n', '<C-x>k', ':bw<CR>', { silent = true, desc = 'Kill current buffer' })
map('n', '<C-x><C-s>', ':w<CR>', { desc = 'Save current buffer' })
map('n', '<C-x>s', ':wa<CR>', { desc = 'Save all buffers' })

-- Close all windows and exit from Neovim with <C-x><C-c>
map('n', '<C-x><C-c>', ':qa!<CR>', { desc = 'Quit Neovim' })

-- open terminal: https://inv.nadeko.net/watch?v=ooTcnx066Do&listen=false
