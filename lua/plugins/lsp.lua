return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end,
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup {
                ensure_installed = {
                    -- lua
                    'lua_ls',
                    -- js/ts
                    'tsserver',
                    -- go
                    'gopls',
                    -- salesforce,
                    'apex_ls'
                },
                auto_install = true,
            }
        end,
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require 'lspconfig'

            lspconfig.lua_ls.setup {}
            lspconfig.tsserver.setup {}
            lspconfig.gopls.setup {}

            vim.keymap.set('n', '<leader>ld', vim.lsp.buf.definition, { desc = 'Go to definition' })
            vim.keymap.set('n', '<leader>lD', vim.lsp.buf.declaration, { desc = 'Go to declaration' })
            vim.keymap.set(
                { 'n' },
                '<leader>ca',
                vim.lsp.buf.code_action,
                { desc = 'Display modal window with code action' }
            )
            vim.keymap.set(
                'n',
                '<leader>li',
                vim.lsp.buf.hover,
                { desc = 'Display info about keyword under the cursor' }
            )
        end,
    },
}
