return {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
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
      -- Keymaps for TS/JS specific actions
      vim.keymap.set("n", "<leader>co", "<cmd>TSToolsOrganizeImports<CR>", { desc = "Organize Imports" })
      vim.keymap.set("n", "<leader>ci", "<cmd>TSToolsAddMissingImports<CR>", { desc = "Add Missing Imports" })
      vim.keymap.set("n", "<leader>ru", "<cmd>TSToolsRemoveUnused<CR>", { desc = "Remove Unused Variables" })
      vim.keymap.set("n", "<leader>fa", "<cmd>TSToolsFixAll<CR>", { desc = "Fix All TS Errors" })
      
      require("typescript-tools").setup(opts)
    end,
  }
