--update runtimepath for lsp
vim.opt.runtimepath:append(',/snap/bin/')

--set leader
vim.g.mapleader = "\\"

--set tabwidth
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

--set number options
vim.opt.number = true
vim.opt.relativenumber = true

-- search optinos
vim.opt.ignorecase = true
vim.opt.smartcase = true
