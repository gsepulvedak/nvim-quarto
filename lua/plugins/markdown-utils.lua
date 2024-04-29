return {
  {
    'ellisonleao/glow.nvim',
    config = true,
    cmd = 'Glow',
    keys = {
      { '<leader>mg', '<cmd>Glow<CR>', desc = '[m]arkdown [g]low open' },
    },
  },
  {
    'toppair/peek.nvim',
    event = { 'VeryLazy' },
    build = 'deno task --quiet build:fast',
    config = function()
      require('peek').setup {
        auto_load = false,
        syntax = false,
        app = 'browser',
      }
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
      vim.keymap.set('n', '<leader>mp', '<cmd>PeekOpen<CR>', { desc = '[m]arkdown [p]review open' })
      vim.keymap.set('n', '<leader>mq', '<cmd>PeekClose<CR>', { desc = '[m]arkdown preview [q]uit' })
    end,
  },
  { -- highlight markdown headings and code blocks etc.
    'lukas-reineke/headlines.nvim',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require('headlines').setup {
        quarto = {
          query = vim.treesitter.query.parse(
            'markdown',
            [[
                (fenced_code_block) @codeblock
                ]]
          ),
          codeblock_highlight = 'CodeBlock',
          treesitter_language = 'markdown',
        },
        markdown = {
          query = vim.treesitter.query.parse(
            'markdown',
            [[
                (fenced_code_block) @codeblock
                ]]
          ),
          codeblock_highlight = 'CodeBlock',
        },
      }
    end,
  },
}
