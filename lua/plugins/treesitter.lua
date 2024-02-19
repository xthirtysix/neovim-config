return {
    {
        'nvim-treesitter/nvim-treesitter',
        dependencies = {'windwp/nvim-ts-autotag'},
        build = ':TSUpdate',
        config = function()
            local configs = require 'nvim-treesitter.configs'
            configs.setup {
                ensure_installed = { 'lua', 'go', 'javascript', 'html', 'css' },
                highlight = { enable = true },
                indent = { enable = true },
                autotag = { enable = true }
            }
        end,
    },
}
