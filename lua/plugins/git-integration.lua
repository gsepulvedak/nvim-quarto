return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
  { -- Adds Tim Pope's fugitive plugin which serves as a wrapper for CLI git
    'tpope/vim-fugitive.nvim',
  },
}
-- vim: ts=2 sts=2 sw=2 et
