return {
	config = function()
		local config = require("nvim-treesitter")
		config.setup({
			"c",
			"cpp",
			"java",
			"javascript",
			"typescript",
			"tsx",
			"jsx",
			"styled",
			"lua",
			"json",
			"html",
			"css",
			"scss",
			"yaml",
			"markdown",
			"markdown_inline",
			"bash",
			"vim",
			"vimdoc",
			"regex",
			"glsl",
		})
	end,
}
