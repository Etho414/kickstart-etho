vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })

-- Leader e is used for neo tree
--vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Alot of these keybinds are robbed from Primeagen (He the goat)
-- Lets u move around text easily in visual mode

vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv")

-- When going up /down half the page keep cursor in the middle

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- When searching keeps cursor in the middle

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- When pasting with leader P voids the current word selected then pastes
--		this preserves the current thing pasted

vim.keymap.set('x', '<leader>p', '"_dP')

-- Does search and replace on current word
vim.keymap.set('n', '<leader>S', [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])

-- copy whole file

vim.keymap.set('n', '<leader>v', 'ggyG')

-- opens exploreer

vim.keymap.set('n', '<leader>E', vim.cmd.Ex)

--[[

remaps set in other files / plugin configs that were custom (Not part of kickstart)

	<leader>e Opens Neo-Tree 

	<CONTROL> \ Opens terminal window

	<CONTROL>n Next autocomplete
	<CONTROL>p Previous autocomplete
	<CONTROL>y Accept autocomplete
	

--]]
