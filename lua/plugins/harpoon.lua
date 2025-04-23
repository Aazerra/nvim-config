return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    keys = {
        {
            "<C-a>",
            function() require("harpoon.mark").add_file() end,
            desc = "throw harpoon to file"
        },
        {
            "<C-e>",
            function () require("harpoon.ui").toggle_quick_menu() end,
            desc = "Open list of harpooned files"
        },
        {
            "<C-n>",
            function () require("harpoon.ui").nav_next() end,
            desc = "Next file in list"
        },
        {
            "<C-p>",
            function () require("harpoon.ui").nav_prev() end,
            desc = "Previous file in list"
        }
    }
}
