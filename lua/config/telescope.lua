local function get_vimgrep_arguments()
	if vim.fn.executable("rg") == 1 then
		-- Default ripgrep arguments used by Telescope
		return {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
		}
	elseif vim.fn.executable("git") == 1 and vim.fn.system("^git rev-parse --is-inside-work-tree") == "true\n" then
		-- Fallback to git grep if inside a git repo
		return {
			"git",
			"grep",
			"--extended-regexp",
			"--line-number",
			"--column",
			"--no-color",
		}
	else
		-- Final fallback to standard grep
		return {
			"grep",
			"--extended-regexp",
			"--color=never",
			"--with-filename",
			"--line-number",
			"-b",
			"--ignore-case",
			"--recursive",
			"--no-messages",
			"--exclude-dir=*cache*",
			"--exclude-dir=*.git",
			"--exclude-dir=*node_modules",
			"--exclude=.*",
			"--binary-files=without-match",
		}
	end
end

return {
	config = function(_, opts)
		local telescope = require("telescope")

		local custom_config = {
			defaults = {
				vimgrep_arguments = get_vimgrep_arguments(),
			},
			opts = opts,
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
			pickers = {
				find_files = {
					theme = "dropdown",
					hidden = true,
					no_ignore = false,
					layout_config = {
						width = 0.8,
						height = 0.6,
					},
				},
				live_grep = {
					theme = "ivy", -- Grep from the bottom pane
				},
				buffers = {
					theme = "dropdown",
					show_all_buffers = true,
					sort_mru = true, -- Sort by most recently used
					mappings = {
						i = {
							["<c-d>"] = "delete_buffer", -- Close a buffer directly from the picker
						},
						n = {
							["<C-d>"] = "delete_buffer",
						},
					},
					layout_config = {
						width = 0.8,
						height = 0.6,
					},
				},
				lsp_definitions = {
					theme = "cursor",
				},
				lsp_references = {
					theme = "cursor",
					previewer = false,
					initial_mode = "normal", -- Open in normal mode so you can jump quickly
					layout_config = {
						width = 0.6, -- Make it wide enough to see code paths
						height = 0.4, -- Keep it short so it doesn't block the screen
					},
				},
			},
		}
		local final_opts = vim.tbl_deep_extend("force", opts or {}, custom_config)
		telescope.setup(final_opts)
		telescope.load_extension("ui-select")
	end,
	opts = function(_, opts)
		-- local actions = require("telescope.actions")
		-- opts.defaults = opts.defaults or {}
		-- opts.defaults.mappings = vim.tbl_deep_extend("force", opts.defaults.mappings or {}, {
		-- 	i = {
		-- 		["<C-d>"] = actions.delete_buffer,
		-- 	},
		-- 	n = {
		-- 		["<C-d>"] = actions.delete_buffer,
		-- 	},
		-- })
		return opts
	end,
}
