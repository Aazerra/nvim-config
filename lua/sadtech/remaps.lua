vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Open netrw' })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n" }, "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("", "<C-l>", "<C-w>l")
vim.keymap.set("", "<C-k>", "<C-w>k")
vim.keymap.set("", "<C-j>", "<C-w>j")
vim.keymap.set("", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<leader>vs", vim.cmd.vsplit)
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Show an error message if a disabled key is pressed
local msg = [[<cmd>echohl Error | echo "KEY DISABLED" | echohl None<CR>]]

-- Disable arrow keys in insert mode with a styled message
vim.keymap.set({ 'n', 'v' }, '<Up>', msg, { noremap = true, silent = false })
vim.keymap.set({ 'n', 'v' }, '<Down>', msg, { noremap = true, silent = false })
vim.keymap.set({ 'n', 'v' }, '<Left>', msg, { noremap = true, silent = false })
vim.keymap.set({ 'n', 'v' }, '<Right>', msg, { noremap = true, silent = false })
