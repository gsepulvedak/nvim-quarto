return {
  { -- Comment enables keymap "gc" to comment visual regions/lines
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
  },
  { -- format things as tables
    'godlygeek/tabular',
    keys = {
      { '<leader>ct', '<cmd>Tabularize /|<cr>', desc = '[C]ode [T]abularise' },
    },
  },
}
