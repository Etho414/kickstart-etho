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
-- 	this preserves the current thing pasted

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

--]]
