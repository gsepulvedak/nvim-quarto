return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup()

      -- Document existing key chains
      require('which-key').register {
        ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
        ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
        ['<leader>D'] = { name = '[D]iagnostics', _ = 'which_key_ignore' },
        ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
        ['<leader>W'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
        ['<leader>i'] = { name = '[I]ncremental selection', _ = 'which_key_ignore' },
        ['<leader>S'] = { name = '[S]lime/[S]end', _ = 'which_key_ignore' },
        ['<leader>m'] = { name = '[M]arkdown', _ = 'which_key_ignore' },
        ['<leader>r'] = { name = '[R]un code', _ = 'which_key_ignore' },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
