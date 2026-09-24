return {
	opts = {
		formatters_by_ft = {
			-- prettier
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			scss = { "prettier" },
			yaml = { "prettier" },
			markdown = { "prettier" },
			-- shfmt
			sh = { "shfmt" },
			bash = { "shfmt" },
			zsh = { "shfmt" },
			-- lua
			lua = { "stylua" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
}
