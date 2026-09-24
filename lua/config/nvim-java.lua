return {

	config = function()
		require("java").setup()
		vim.lsp.enable("jdtls")
	end,
}
