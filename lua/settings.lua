-- Encoding
vim.g.scriptencoding = "utf-8"

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Keybindings (obsolete with nvim-tree)
-- vim.keymap.set('n', "<leader>fs", vim.cmd.Ex)
-- vim.keymap.set('n', "<leader>pv", vim.cmd.Ex)

-- Editor settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard:append("unnamedplus") -- Use system clipboard as the default register
vim.opt.syntax = "on"
vim.opt.tabstop = 4 -- 4 spaces for tab
vim.opt.shiftwidth = 4 -- 4 spaces for indent width
vim.opt.expandtab = true -- Expand tab to spaces
vim.opt.wrap = false
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- If included mixed case in search, assumes case-sensitivity
vim.opt.autoindent = true
vim.opt.smartindent = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
vim.opt.mouse = "a"
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.backspace = "indent,eol,start"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.swapfile = false

-- Shell settings
vim.opt.shell = "pwsh"  -- Sets PowerShell as the default terminal.
vim.opt.shellcmdflag = "-command"
vim.cmd([[ autocmd TermOpen * setlocal nonumber norelativenumber ]])

-- Keymaps
vim.keymap.set("n", "<A-h>", vim.cmd.bprev)
vim.keymap.set("n", "<A-l>", vim.cmd.bnext)
vim.keymap.set("n", "<A-d>", vim.cmd.bdelete)
vim.keymap.set("n", "+", "<C-a>") -- Increment
vim.keymap.set("n", "-", "<C-x>") -- Decrement
vim.keymap.set("i", "<C-H>", "<C-o>diw")
