return {
  {
    'R-nvim/R.nvim',
    lazy = false,
    config = function()
      local opts = {
        setwd = 'nvim',
        csv_app = 'terminal:vd',
      }
    end,
  },
  'R-nvim/cmp-r',
  {
    'hrsh7th/nvim-cmp',
    config = function()
      require('cmp').setup { sources = { { name = 'cmp_r' } } }
      require('cmp_r').setup {}
    end,
  },
}
