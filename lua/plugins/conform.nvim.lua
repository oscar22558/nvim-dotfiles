return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			html = { "prettierd" },
			css = { "prettierd" },
			scss = { "prettierd" },
			less = { "prettierd" },

			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			javascriptreact = { "prettierd", "prettier", stop_after_first = true },
			typescriptreact = { "prettierd", "prettier", stop_after_first = true },
			json = { "prettierd" },
			lua = { "stylua" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
}
