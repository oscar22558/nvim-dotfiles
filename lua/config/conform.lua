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
			-- python
			python = { "ruff_organize_imports", "ruff_format" },
		},
		format_on_save = {
			timeout_ms = 10000,
			lsp_fallback = true,
		},
	},
	keys = {
		{
			-- Manual format keybinding
			"<leader>cf",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
}
