vim.g.mapleader = " "

-- Move Line Visual Block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Moptvement Windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- terminal
vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("t", "<C-j>", "<cmd>wincmd j<CR>")
vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<CR>")
vim.keymap.set("t", "<C-l>", "<cmd>wincmd l<CR>")

-- Do Movement and Set View Center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- No Search Highlight
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>")

-- yank to clipboard
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>p", '"+p')

-- terminal split below
-- vim.keymap.set(
-- 	"n",
-- 	"<leader>t",
-- 	"<cmd>wincmd b<CR>|<cmd>bel split<CR>|<cmd>terminal<CR>|<cmd>resize 10<CR>",
-- 	{ desc = "Terminal" }
-- )
