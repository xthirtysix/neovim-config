return {
    'echasnovski/mini.nvim',
    version = '*',
    config = function ()
        require('mini.animate').setup()
        require('mini.comment').setup()
        require('mini.indentscope').setup()
        require('mini.pairs').setup()
    end
}
