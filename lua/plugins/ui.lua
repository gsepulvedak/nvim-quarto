return {
  { -- show tree of symbols in the current file
    'simrat39/symbols-outline.nvim',
    cmd = 'SymbolsOutline',
    keys = {
      { '<leader>do', ':SymbolsOutline<cr>', desc = 'Toggle [d]ocument symbols [o]utline' },
    },
    opts = {},
  },
  { -- Highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
}
