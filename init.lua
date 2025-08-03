vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true -- fancy icons (if font supports it)

require 'custom.editor-options'
require 'custom.keymaps'
require 'custom.autocmds'

-- [[ Install `lazy.nvim` ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  require 'custom.plugins.cmp',
  require 'custom.plugins.conform',
  require 'custom.plugins.github-copilot',
  require 'custom.plugins.coloschemes',
  require 'custom.plugins.lazydev',
  require 'custom.plugins.lsp-config',
  require 'custom.plugins.mini',
  require 'custom.plugins.nvim-ufo',
  require 'custom.plugins.neotest',
  require 'custom.plugins.telescope',
  require 'custom.plugins.treesitter',
  require 'custom.plugins.which-key',
  require 'kickstart.plugins.gitsigns',
  require 'kickstart.plugins.neo-tree',
}, {
  ui = {
    icons = {},
  },
})
