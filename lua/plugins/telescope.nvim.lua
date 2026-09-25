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
	"nvim-telescope/telescope.nvim",

	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				vimgrep_arguments = get_vimgrep_arguments(),
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({
						-- even more opts inside the table if you want
					}),
				},
			},
		})
		-- Load the extension
		telescope.load_extension("ui-select")
		-- telescope.load_extension("live_grep_args")
	end,
	opts = function(_, opts)
		local actions = require("telescope.actions")
		-- Ensure mappings table exists
		opts.defaults = opts.defaults or {}
		opts.defaults.mappings = vim.tbl_deep_extend("force", opts.defaults.mappings or {}, {
			i = {
				-- Close buffer with Ctrl+d in Insert mode
				["<C-d>"] = actions.delete_buffer,
			},
			n = {
				-- Close buffer with Ctrl+d or dd in Normal mode
				["<C-d>"] = actions.delete_buffer,
			},
		})
	end,
}
