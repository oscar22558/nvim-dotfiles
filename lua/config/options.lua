local opt = vim.opt

opt.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
opt.shiftwidth = 2 -- Size of an indent
opt.softtabstop = 2 -- Number of spaces that a <Tab> counts for while performing editing operations
opt.expandtab = true -- Convert tabs to spaces

-- Global Neovim Search Options
opt.ignorecase = true -- Case-insensitive searching
opt.smartcase = true -- Case-sensitive if pattern contains uppercase
opt.hlsearch = true -- Highlight all matches
opt.incsearch = true -- Show matches as you type
