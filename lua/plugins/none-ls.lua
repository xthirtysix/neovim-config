return {
    'nvimtools/none-ls.nvim',
    dependencies = { 'davidmh/cspell.nvim' },
    config = function()
        local null_ls = require 'null-ls'
        local cspell = require 'cspell'

        null_ls.setup {
            sources = {
                -- JS/TS
                null_ls.builtins.formatting.prettier,
                -- Lua
                null_ls.builtins.formatting.stylua,
                -- Go
                -- Common
                null_ls.builtins.diagnostics.cspell,
                null_ls.builtins.completion.spell,
                cspell.code_actions,
            },
        }

        vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = 'Format file with none-ls' })
    end,
}
