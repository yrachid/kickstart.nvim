-- See `:help vim.opt`, `:help option-list`
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

vim.o.termguicolors = true

vim.opt.number = true
vim.opt.inccommand = 'split' -- preview substitutions

vim.opt.mouse = 'a' -- enable mouse mode
vim.opt.showmode = false -- already shows in statusline

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.breakindent = true

vim.opt.undofile = true -- save undo history

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how splits open
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Show which line cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Folding
vim.o.foldcolumn = '1'
vim.o.foldlevel = 99 -- Using ufo provider need a large value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
