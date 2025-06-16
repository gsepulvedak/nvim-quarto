return {
  { -- show tree of symbols in the current file
    'stevearc/aerial.nvim',
    keys = {
      { '<leader>do', "<cmd>AerialToggle<CR>", desc = 'Toggle [d]ocument [o]utline (aerial)' },
      { '<leader>dn', "<cmd>AerialNavToggle<CR>", desc = 'Toggle [d]ocument [n]avigator (aerial)' },
    },
    opts = {
      layout = { min_width = 25 },
      filter_kind = false,
      backends = { "lsp" }
    },
  },
  { -- Highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    ft = "python",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  }
}
