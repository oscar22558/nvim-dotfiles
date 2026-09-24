return {

	opts = {
		settings = {
			-- Fixes automatic imports and code actions
			expose_as_code_action = "all",
			-- Spawns a tsserver per project or a single instance
			tsserver_max_memory = 3072,
			jsx_close_tag = {
				enable = true,
				filetypes = { "javascriptreact", "typescriptreact" },
			},
		},
	},
	config = function(_, opts)
		require("typescript-tools").setup(opts)
	end,
}
