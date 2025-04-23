return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    enabled = false,
    opts = {
        columns = {
            "icon",
            "permissions",
            "size",
            "mtime",
        },
        watch_for_changes = true,
        view_options = {
            show_hidden = true,
        }
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    -- config = function()
    --     require("oil").setup()
    -- end
}
