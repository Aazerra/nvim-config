vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Open netrw' })

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
