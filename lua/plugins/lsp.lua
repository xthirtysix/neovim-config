---@diagnostic disable: undefined-global
return {
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {
                'williamboman/mason.nvim',
                config = true,
                opts = {},
            },
            { 'williamboman/mason-lspconfig.nvim' },
        },
        lazy = false,
        config = function()
            local mason_lspconfig = require 'mason-lspconfig'

            mason_lspconfig.setup {
                ensure_installed = {
                    -- lua
                    'lua_ls',
                    -- js/ts
                    'tsserver',
                    -- go
                    'gopls',
                    -- salesforce,
                    'apex_ls',
                },
                auto_install = true,
            }

            require('cmp').setup {
                sources = {
                    { name = 'nvim_lsp' },
                },
            }

            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require 'lspconfig'

            lspconfig.lua_ls.setup {
                capabilities = capabilities,
            }
            lspconfig.tsserver.setup {
                capabilities = capabilities,
            }
            lspconfig.gopls.setup {
                capabilities = capabilities,
            }
            lspconfig.apex_ls.setup {
                apex_enable_semantic_errors = false,
                apex_enable_completion_statistics = false,
                filetypes = { 'apex' },
                root_dir = lspconfig.util.root_pattern 'sfdx-project.json',
                on_attach = on_attach,
                capabilities = capabilities,
            }

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
