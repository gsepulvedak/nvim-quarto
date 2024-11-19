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
  {
  'hat0uma/csvview.nvim',
  ft = { "csv", "tsv" },
  config = function()
    require('csvview').setup({})
    vim.keymap.set('n', '<localleader>cv', '<cmd>CsvViewToggle <cr>', { desc = 'Toggle [c]sv [v]iewer' })
  end
  },
}
