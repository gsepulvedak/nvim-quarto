return {
  {
    'jpalardy/vim-slime',
    init = function()
      vim.g.slime_target = 'tmux'
      vim.g.slime_bracketed_paste = 1
      vim.cmd([[ let g:slime_default_config = { "socket_name": "default", "target_pane": "1" } ]])
    end,
    config = function()
      vim.keymap.set('v', '<leader>S>', '<Plug>SlimeRegionSend<CR>', { desc = '[S]lime: send visually selected region' })
      vim.keymap.set('n', '<leader>Sm', '<Plug>SlimeMotionSend<CR>', { desc = '[S]lime: send <[m]otion>' })
      vim.keymap.set('n', '<leader>Sp', '<Plug>SlimeParagraphSend<CR>', { desc = '[S]lime: send [p]aragraph' })
      vim.keymap.set('n', '<leader>Sl', '<Plug>SlimeLineSend<CR>', { desc = '[S]lime: send {count} [l]ines' })
      vim.keymap.set('n', '<leader>Sc', '<Plug>SlimeSendCell<CR>', { desc = '[S]lime: send delimited [c]ell' })
    end,
    keys = {
      { '<leader>SC', '<cmd>SlimeConfig<cr>', desc = '[S]lime: [C]onfig' },
    },
  },
}
