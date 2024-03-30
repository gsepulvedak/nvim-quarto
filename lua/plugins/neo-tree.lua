-- File: lua/custom/plugins/neo-tree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      source_selector = {
        winbar = true,
        statusline = false,
      },
      window = {
        width = 30,
      },
    }
  end,
  keys = {
    -- disable the keymap to grep files
    {
      '<leader>fb',
      '<cmd>Neotree toggle<cr>',
      desc = 'Toggle Neo-tree [f]ile [b]rowser sidebar',
    },
  },
}
