return {
    'nvimtools/none-ls.nvim',
    dependencies = { 'davidmh/cspell.nvim' },
    config = function()
        local null_ls = require 'null-ls'
        --local cspell = require 'cspell'

        null_ls.setup {
            sources = {
                -- JS/TS
                null_ls.builtins.formatting.prettier.with {
                    filetypes = { 'apex' },
                    extra_args = { '--plugin=prettier-plugin-apex', '--write' },
                },
                null_ls.builtins.diagnostics.pmd.with({
                    filetypes = {"apex"},
                    args = {"check", "--dir", "$ROOT", "--format", "json"},
                    extra_args = {"--rulesets", "apex_ruleset.xml"}
                }),
                -- Lua
                null_ls.builtins.formatting.stylua,
                -- Go
                -- Common
                null_ls.builtins.diagnostics.typos,
                null_ls.builtins.completion.spell,
                --cspell.code_actions,
            },
        }

        vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, { desc = 'Format file with none-ls' })
    end,
}
