vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })

-- Toggle comment for the current line in Normal mode
vim.keymap.set("n", "<C-_>", "gcc", { remap = true, desc = "Toggle comment line" })

-- Toggle comment for the selected text in Visual mode
vim.keymap.set("v", "<C-_>", "gc", { remap = true, desc = "Toggle comment selection" })

-- Neotree
vim.keymap.set("n", "<C-e>", "<Cmd>Neotree toggle<CR>")

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Navigate buffers
vim.keymap.set("n", "<leader>bf", ":bfirst<CR>", { silent = true })
vim.keymap.set("n", "<leader>bl", ":blast<CR>", { silent = true })
vim.keymap.set("n", "<leader>bl", ":blast<CR>", { silent = true })
vim.keymap.set("n", "<leader>bd", ":b#|-bd#<CR>", { desc = "Close buffer, keep split" })
vim.keymap.set("n", "<A-k>", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<A-j>", ":bprevious<CR>", { silent = true })

-- Navigate Tabs
vim.keymap.set("n", "<A-l>", ":tabnext<CR>", { silent = true })
vim.keymap.set("n", "<A-h>", ":tabprevious<CR>", { silent = true })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>to", ":tabonly<CR>", { desc = "Close all other tabs" })
