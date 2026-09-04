return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter")
		config.setup({
			"javascript",
			"typescript",
			"tsx", -- Crucial for React/JSX framework support
			"html",
			"css",
			"lua", -- Highly recommended for managing Neovim configs
			"vim",
			"vimdoc",
			"query",
		})
	end,
}
