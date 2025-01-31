return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup {
            pickers = {
                find_files = {
                    theme = "dropdown",
                }
            },
        }
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>pl', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>pb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>ph', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>\\', builtin.grep_string, { desc = 'Telescope grep string' })

        vim.keymap.set('n', '<leader>pr', builtin.lsp_references, { desc = 'Telescope lsp refrences' })
        vim.keymap.set('n', '<leader>gd', builtin.lsp_implementations, { desc = 'Telescope lsp implementations' })

        vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'git status' })
    end
}
