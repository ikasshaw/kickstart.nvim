vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
-- vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('t', '<C-w>', '<C-\\><C-n><C-w>')

-- minimize terminal split
vim.keymap.set('n', '<C-g>', '3<C-w>_')
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Primeagen keymaps
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', '10jzz')
vim.keymap.set('n', '<leader>j', 'mzJ`z')
vim.keymap.set('n', 'K', '10kzz')

vim.keymap.set('n', '<leader>j', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Other keymaps

vim.keymap.set('n', 'o', 'o<esc>')
vim.keymap.set('n', 'O', 'O<esc>')

vim.keymap.set('n', '<leader>o', 'o')
vim.keymap.set('n', '<leader>O', 'O')

-- default delete to the void
vim.keymap.set({ 'n', 'v' }, 'd', '"_d')
vim.keymap.set({ 'n', 'v' }, 'D', '"_D')

vim.keymap.set({ 'n', 'v' }, '<leader>d', 'd')
vim.keymap.set({ 'n', 'v' }, '<leader>D', 'D')

-- default yank and paste use system clipboard
vim.keymap.set({ 'n', 'v' }, 'Y', '"+y$')
vim.keymap.set({ 'n', 'v' }, 'P', '"+P')

vim.keymap.set({ 'n', 'v' }, '<leader>Y', 'y$')
vim.keymap.set({ 'n', 'v' }, '<leader>P', 'p')

-- default yank and paste use system clipboard
vim.keymap.set({ 'n', 'v' }, 'y', '"+y')
vim.keymap.set({ 'n', 'v' }, 'p', '"+p')

vim.keymap.set({ 'n', 'v' }, '<leader>y', 'y')
vim.keymap.set({ 'n', 'v' }, '<leader>p', 'p')

vim.keymap.set({ 'n', 'v' }, 'P', '"+P')

vim.keymap.set({ 'n', 'v' }, '<leader>Y', 'y$')
vim.keymap.set({ 'n', 'v' }, '<leader>P', 'P')

vim.keymap.set({ 'v' }, '>', '>gv')
vim.keymap.set({ 'v' }, '<', '<gv')
