return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        enabled = false,
        config = function()
            require("tokyonight").setup({
                transparent = true,
                on_highlights = function(hl, c)
                    local prompt = "#c8d3f5"
                    hl.DiagnosticVirtualTextError = { bg = "none", fg = c.red1 }
                    hl.DiagnosticVirtualTextInfo = { bg = "none", fg = c.fg }
                    hl.DiagnosticVirtualTextWarn = { bg = "none", fg = c.orange }
                    hl.DiagnosticVirtualTextHint = { bg = "none", fg = c.purple }

                    hl.CursorLine = { bg = "none" }
                    hl.TelescopeNormal = {
                        bg = "none"
                    }
                    hl.TelescopeBorder = {
                        bg = "none",
                        fg = prompt,
                    }
                    hl.TelescopePromptBorder = {
                        bg = "none",
                        fg = prompt,
                    }
                    hl.TelescopePromptNormal = {
                        bg = "none",
                    }
                    hl.TelescopePromptBorder = {
                        bg = "none",
                        fg = prompt,
                    }
                    hl.TelescopePromptTitle = {
                        bg = "none",
                        fg = prompt,
                    }
                    hl.TelescopePreviewTitle = {
                        bg = "none",
                        fg = c.fg,
                    }
                    hl.TelescopeResultsTitle = {
                        bg = "none",
                        fg = c.fg,
                    }
                end
            })
            -- load the colorscheme here
            vim.cmd([[colorscheme tokyonight]])
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                background = {
                    light = "latte",
                    dark = "mocha",
                },
                transparent_background = true,
                show_end_of_buffer = true,
                term_colors = true,
                color_overrides = {},
                custom_highlights = {
                    CursorLine = { bg = "none" }
                },
                default_integrations = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    treesitter = true,
                    notify = true,
                    mini = {
                        enabled = true,
                        indentscope_color = "",
                    },
                    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
                },
            })

            -- setup must be called before loading
            vim.cmd.colorscheme "catppuccin"
        end
    }
}
