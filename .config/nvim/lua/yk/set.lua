vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.showmode = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.background = "dark"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
vim.opt.undofile = true
vim.g.autowriteall = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.netrw_altfile = 1
vim.g.netrw_fastbrowse = 0

vim.keymap.set("n", "<leader>q", "<cmd>bd<CR>", {})
vim.keymap.set("n", "L", "<cmd>bn<CR>", {})
vim.keymap.set("n", "H", "<cmd>bp<CR>", {})

vim.keymap.set("n", "<leader>o", "o<Esc>", {})
vim.keymap.set("n", "<leader>O", "O<Esc>", {})

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", {})
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", {})

vim.keymap.set("v", "<leader>p", "\"_dP", {})
vim.keymap.set({ "n", "v" }, "<leader>y", "\"*y", {})

-- Terminal bindings
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {})
