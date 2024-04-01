return {
  { -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
  },
  { -- Comment enables keymap "gc" to comment visual regions/lines
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
  },
  { -- Highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
}
