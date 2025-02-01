return {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    enabled = false,
    config = function()
        require('lualine').setup({
            options = {
                theme = "onedark",
                section_separators = { left = '', right = '' },
                component_separators = { left = '', right = '' }
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { },
                lualine_z = { 'location' }
            }
        })
    end
}
