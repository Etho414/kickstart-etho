vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Shell used for Neo-Term plugin
vim.o.shell = 'C:\\Windows\\System32\\cmd.exe'

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.mouse = 'a'

vim.opt.showmode = false

vim.opt.clipboard = 'unnamedplus'

vim.opt.breakindent = true

vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 30

vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true
-- Do relative numbers
vim.opt.relativenumber = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 7

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
