local tokyonight = require("config.tokyonight")

return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = tokyonight.opts,
}
