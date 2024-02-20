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
            { 'brenoprata10/nvim-highlight-colors' },
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

            local lsps = {
                [1] = 'tsserver',
                [2] = 'cssls',
                [3] = 'html',
                [4] = 'lwc_ls',
                [5] = 'gopls',
                [6] = 'lua_ls',
            }

            -- setup LSP autocompletions
            for _, lsp in pairs(lsps) do
                lspconfig[lsp].setup {
                    capabilities = capabilities,
                }
            end

            -- Salesforce
            lspconfig.apex_ls.setup {
                apex_enable_semantic_errors = false,
                apex_enable_completion_statistics = false,
                filetypes = { 'apex' },
                root_dir = lspconfig.util.root_pattern 'sfdx-project.json',
                on_attach = on_attach,
                capabilities = capabilities,
            }

            -- Highlight CSS colors
            require('nvim-highlight-colors').setup {
                render = 'background', -- or 'foreground' or 'first_column'
                enable_named_colors = true,
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
