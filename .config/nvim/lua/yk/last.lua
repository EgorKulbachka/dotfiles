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
