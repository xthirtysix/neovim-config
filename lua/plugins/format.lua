return {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },

    config = function()
        local conform = require 'conform'

        conform.setup {
            formatters_by_ft = {
                javascript = { 'prettier' },
                typescript = { 'prettier' },
                css = { 'prettier' },
                html = { 'prettier' },
                json = { 'prettier' },
                yaml = { 'prettier' },
                markdown = { 'prettier' },
                graphql = { 'prettier' },
                lua = { 'stylua' },
                vue = { 'volar', 'prettier' },
                apex = { 'prettier' }
            },
        }

        vim.keymap.set({ 'n', 'v' }, '<leader>f', function()
            conform.format {
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            }
        end, { desc = 'Format file or range (in visual mode)' })
    end,
}
