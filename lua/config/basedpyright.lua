vim.lsp.config("basedpyright", {
	settings = {
		basedpyright = {
			analysis = {
				typeCheckingMode = "standard", -- Options: "off", "basic", "standard", "strict", "all"
				autoSearchPaths = true,
				useLibraryCodeForTypes = true,
				diagnosticMode = "openFilesOnly",
				inlayHints = {
					callArgumentNames = true,
				},
			},
		},
	},
})

vim.lsp.enable("basedpyright")
