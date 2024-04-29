return {
  {
    'quarto-dev/quarto-nvim',
    enabled = false,
    dev = false,
    ft = { "quarto" },
    dependencies = {
      'jmbuhr/otter.nvim',
      'hrsh7th/nvim-cmp',
    },
    opts = {
      codeRunner = {
        enabled = true,
        default_method = 'slime', -- 'molten' or 'slime'
      },
    },
    keys = {
      { "<leader>qa", "<cmd>QuartoActivate<cr>", desc = "[Q]uarto [A]ctivate" },
    },
  },
}
