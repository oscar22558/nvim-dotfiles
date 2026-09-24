local tsTools = require("config.typescript-tools")

return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	opts = tsTools.opts,
	config = tsTools.config,
}
