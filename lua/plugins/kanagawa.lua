return {
    {
        'rebelot/kanagawa.nvim',
        opts = function()
            return {
                compile = false, -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false, -- do not set background color
                dimInactive = false, -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = { -- add/modify theme and palette colors
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
                },
                overrides = function() -- add/modify highlights
                    return {}
                end,
                theme = 'wave', -- Load "wave" theme when 'background' option is not set
                background = { -- map the value of 'background' option to a theme
                    dark = 'wave', -- try "dragon" !
                    light = 'lotus',
                },
            }
        end,
        config = function()
            vim.cmd 'colorscheme kanagawa'
        end,
    },
}
