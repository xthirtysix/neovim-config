return {
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        config = function()
            local catppuccin = require 'catppuccin'
            local colors = require('catppuccin.palettes').get_palette()
            colors.none = 'NONE'

            catppuccin.setup {
                transparent_background = true,
                show_end_of_buffer = true,
                styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                    comments = { 'italic' }, -- Change the style of comments
                    conditionals = { 'italic' },
                    loops = { 'italic' },
                    functions = { 'italic' },
                    keywords = { 'italic' },
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                },
                integrations = {
                    cmp = true,
                    mason = true,
                    harpoon = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                    telescope = {
                        enabled = true,
                    },
                    native_lsp = {
                        enabled = true,
                        virtual_text = {
                            errors = { 'italic' },
                            hints = { 'italic' },
                            warnings = { 'italic' },
                            information = { 'italic' },
                        },
                        underlines = {
                            errors = { 'underline' },
                            hints = { 'underline' },
                            warnings = { 'underline' },
                            information = { 'underline' },
                        },
                        inlay_hints = {
                            background = true,
                        },
                    },
                },
                custom_highlights = function(theme_colors)
                    return {
                        LineNr = { fg = theme_colors.overlay1 },
                        Whitespace = { fg = theme_colors.surface2 },
                    }
                end,
            }

            vim.cmd.colorscheme 'catppuccin'
        end,
    },
}
