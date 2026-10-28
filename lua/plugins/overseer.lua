return {
	"stevearc/overseer.nvim",
	cmd = { "OverseerRun", "OverseerToggle", "OverseerBuild" }, -- Lazy load on these commands
	opts = {
		strategy = {
			"terminal",
			use_shell = {
				shell = "bash",
				args = { "-c" },
			},
			use_system_wrapper = false,
		},
		templates = { "builtin", "vscode" },
	},
	config = function(_, opts)
		require("overseer").setup(opts)
	end,
}
