vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })

-- Toggle comment for the current line in Normal mode
vim.keymap.set("n", "<C-/>", "gcc", { remap = true, desc = "Toggle comment line" })

-- Toggle comment for the selected text in Visual mode
vim.keymap.set("v", "<C-/>", "gc", { remap = true, desc = "Toggle comment selection" })

-- Neotree
vim.keymap.set("n", "<C-e>", "<Cmd>Neotree toggle<CR>")

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
-- vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Navigate buffers
vim.keymap.set("n", "<leader>bf", ":bfirst<CR>", { silent = true })
vim.keymap.set("n", "<leader>bl", ":blast<CR>", { silent = true })
vim.keymap.set("n", "<leader>bl", ":blast<CR>", { silent = true })
vim.keymap.set("n", "<leader>bd", ":b#|-bd#<CR>", { desc = "Close buffer, keep split" })
vim.keymap.set("n", "<A-k>", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<A-j>", ":bprevious<CR>", { silent = true })

vim.keymap.set("n", "<Leader>bn", "<cmd>enew<CR>", { desc = "New buffer" })

-- Navigate Tabs
vim.keymap.set("n", "<A-l>", ":tabnext<CR>", { silent = true })
vim.keymap.set("n", "<A-h>", ":tabprevious<CR>", { silent = true })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>to", ":tabonly<CR>", { desc = "Close all other tabs" })

-- LazyGit
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })

-- oil
vim.keymap.set("n", "<leader>oo", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Keymaps for TS/JS specific actions
vim.keymap.set("n", "<leader>co", "<cmd>TSToolsOrganizeImports<CR>", { desc = "Organize Imports" })
vim.keymap.set("n", "<leader>ci", "<cmd>TSToolsAddMissingImports<CR>", { desc = "Add Missing Imports" })
vim.keymap.set("n", "<leader>ru", "<cmd>TSToolsRemoveUnused<CR>", { desc = "Remove Unused Variables" })
vim.keymap.set("n", "<leader>fa", "<cmd>TSToolsFixAll<CR>", { desc = "Fix All TS Errors" })
-- regex search in file, automatically start forward and backward searches in Very Magic mode
vim.keymap.set("n", "/", "/\\v", { desc = "Search Forward (Very Magic)" })
vim.keymap.set("n", "?", "?\\v", { desc = "Search Backward (Very Magic)" })

-- Terminal
vim.keymap.set("n", "<leader>wt", ":terminal<CR>", { desc = "Open terminal" })
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- go to
vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, { desc = "Telescope LSP References" })

-- refactor
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename variable" })

-- error
vim.keymap.set("n", "<leader>ge", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
