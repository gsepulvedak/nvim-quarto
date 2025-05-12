return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VeryLazy', -- Sets the loading event to 'VimEnter'
    opts = {
      spec = {
        { "<leader>D", group = "[D]iagnostics" },
        { "<leader>D_", hidden = true },
        { "<leader>W", group = "[W]orkspace" },
        { "<leader>W_", hidden = true },
        { "<leader>c", group = "[C]ode" },
        { "<leader>c_", hidden = true },
        { "<leader>d", group = "[D]ocument" },
        { "<leader>d_", hidden = true },
        { "<leader>i", group = "[I]ncremental selection" },
        { "<leader>i_", hidden = true },
        { "<leader>m", group = "[M]arkdown" },
        { "<leader>m_", hidden = true },
        { "<leader>r", group = "[R]un code" },
        { "<leader>r_", hidden = true },
        { "<leader>s", group = "[S]earch" },
        { "<leader>s_", hidden = true },
      },
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
