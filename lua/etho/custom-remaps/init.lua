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

vim.keymap.set('n', '<leader>E', vim.cmd.Ex)

--[[




--]]

_G.custom_keybinds_etho = {
  telescope = {
    fuzzy_buffer = '<leader>/',
    search_open = '<leader>s/',
    search_neovim = '<leader>sn',
    help_tag = '<leader>sh',
    keymaps = '<leader>sk',
    find_files = '<leader>sf',
    builtin = '<leader>ss',
    grep_string = '<leader>sw',
    live_grep = '<leader>sg',
    diagnostics = '<leader>sd',
    resume = '<leader>sr',
    oldfiles = '<leader>s.',
    buffers = '<leader><leader>',
  },
  neo_tree = {
    toggle_tree = '<leader>e',
  },
  terminal = {
    toggle_term = '<c-\\>',
  },

  lsp = {
    definitions = 'gd', -- Jump to the definition of the word under your cursor. To jump back, press <C-t>.
    references = 'gr', -- Find references for the word under your cursor.
    implementations = 'gI', -- Jump to the implementation of the word under your cursor.
    type_definitions = '<leader>D', -- Jump to the type of the word under your cursor. Useful when you're not sure what type a variable is and you want to see the definition of its *type*, not where it was *defined*.
    document_symbols = '<leader>ds', -- Fuzzy find all the symbols in your current document.
    dynamic_workspace_symbols = '<leader>ws', -- Fuzzy find all the symbols in your current workspace. Similar to document symbols, except searches over your entire project.
    buf_rename = '<leader>rn', -- Rename the variable under your cursor.
    buf_code_action = '<leader>ca', -- Execute a code action, usually your cursor needs to be on top of an error or a suggestion from your LSP for this to activate.
    hover_doc = 'K', --  See `:help K` for why this keymap.
    goto_declaration = 'gD', -- WARN: This is not Goto Definition, this is Goto Declaration. For example, in C this would take you to the header.
    toggle_inlay_hints = '<leader>th', -- [T]oggle Inlay [H]ints
  },
  conform = {
    format_buffer = '<leader>f',
  },
}
--[[

remaps set in other files / plugin configs that were custom (Not part of kickstart)

	<leader>e Opens Neo-Tree 

	<CONTROL> \ Opens terminal window

	<CONTROL>n Next autocomplete
	<CONTROL>p Previous autocomplete
	<CONTROL>y Accept autocomplete
	

--]]
