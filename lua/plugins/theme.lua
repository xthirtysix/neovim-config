return {
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        config = function()
            local catppuccin = require 'catppuccin'

            catppuccin.setup {
                show_end_of_buffer = true,
                styles = {                   -- Handles the styles of general hi groups (see `:h highlight-args`):
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
                    types = {},
                    operators = {},
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
            }

            vim.cmd.colorscheme('catppuccin')
        end,
    },
}
