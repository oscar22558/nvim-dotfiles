return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		lazy = false, -- neo-tree will lazily load itself
		config = function(_, opts)
			require("neo-tree").setup(opts)
			-- vim.api.nvim_create_autocmd("FileType", {
			-- 	pattern = "neo-tree",
			-- 	callback = function()
			-- 		vim.opt_local.number = true
			-- 		vim.opt_local.relativenumber = true
			-- 	end,
			-- })

			vim.api.nvim_create_autocmd("BufEnter", {
				group = vim.api.nvim_create_augroup("RestoreLineNumbers", { clear = true }),
				callback = function()
					-- Only apply to normal editable files, ignoring plugins like Neo-tree, Alpha, etc.
					if vim.bo.buftype == "" and vim.bo.filetype ~= "neo-tree" then
						vim.opt_local.number = true
						vim.opt_local.relativenumber = true -- Remove if you prefer absolute numbers only
					end
				end,
			})
		end,
		---@module 'neo-tree'
		---@type neotree.Config
		opts = {
			--	window = {
			--		options = {
			--			number = true,
			--			relativenumber = true,
			--		},
			--	},
			event_handlers = {
				{
					event = "neo_tree_buffer_enter",
					handler = function()
						-- For absolute line numbers
						vim.opt_local.number = true

						-- For relative line numbers (highly recommended for jumping between files)
						vim.opt_local.relativenumber = true

						-- To ensure sign/status columns do not break spacing:
						vim.opt_local.statuscolumn = ""
					end,
				},
			},
		},
	},
}
