return {
  {
    'catppuccin/nvim',
    lazy = false,
    name = 'catppuccin',
    priority = 1000,
    config = function()
      -- Set the colour scheme installed via lua/lazy-plugins.lua
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
}
