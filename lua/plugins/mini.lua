return {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
        require('mini.animate').setup {
            open = { enable = false },
            close = { enable = false },
        }
        require('mini.comment').setup()
        require('mini.indentscope').setup()
        require('mini.pairs').setup()
    end,
}
