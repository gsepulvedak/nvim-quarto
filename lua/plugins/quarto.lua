return {
	{
    "quarto-dev/quarto-nvim",
		ft = "quarto",
		dependencies = {
			"jmbuhr/otter.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
    config = function()
      require "quarto".setup {
        lspFeatures = {
          enabled = true,
          languages = { "r", "python", "julia", "bash", "html" },
          diagnostics = {
            enabled = true,
            triggers = { "BufWritePost" }
          },
          completion = {
            enabled = true
          }
        },
        codeRunner = {
          enabled = true,
          default_method = "iron", -- or 'molten', 'slime'
        },
      }
      
      -- Configure Otter.nvim for better embedded language support
      require("otter").setup({
        lsp = {
          hover = {
            border = "rounded",
          },
        },
        buffers = {
          set_filetype = true,
        },
        handle_leading_whitespace = true,
      })
    end
	},
  -- Use Iron to send code to terminal
  { "Vigemus/iron.nvim" },
}
