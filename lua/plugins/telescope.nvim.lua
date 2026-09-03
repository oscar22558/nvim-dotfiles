return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
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
