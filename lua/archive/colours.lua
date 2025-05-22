return {
  {
    'catppuccin/nvim',
    enabled = true,
    lazy = false,
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true,
      })
    end,
    init = function()
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
}
