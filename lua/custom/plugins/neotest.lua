return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'olimorris/neotest-rspec',
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-rspec',
      },
    }
  end,
  keys = {
    { '<leader>Tr', ':Neotest run<CR>', desc = '[T]est [r]un' },
    { '<leader>Ts', ':Neotest summary<CR>', desc = '[T]est [s]ummary' },
    { '<leader>To', ':Neotest output-panel<CR>', desc = '[T]est [o]utput' },
    { '<leader>Th', ':Neotest stop <CR>', desc = '[T]est [h]alt' },
  },
}
