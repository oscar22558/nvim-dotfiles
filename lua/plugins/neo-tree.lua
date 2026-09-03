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
    ---@module 'neo-tree'
    ---@type neotree.Config
    opts = {
	event_handlers = {
	      {
		event = "neo_tree_buffer_enter",
		handler = function()
		  -- For absolute line numbers
		  vim.opt_local.number = true
		  
		  -- For relative line numbers (highly recommended for jumping between files)
		  vim.opt_local.relativenumber = true
		end,
	      },
    },
    }
  }
}
