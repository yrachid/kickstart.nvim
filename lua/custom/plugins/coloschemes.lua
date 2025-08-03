return {
  'folke/tokyonight.nvim',
  'sainnhe/gruvbox-material',
  'thallada/farout.nvim',
  'tomasiser/vim-code-dark',
  {
    'shmerl/neogotham',
    lazy = false,
    config = function()
      require('neogotham'):setup { oldgotham = true }
      vim.cmd.colorscheme 'neogotham'
    end,
  },
}
