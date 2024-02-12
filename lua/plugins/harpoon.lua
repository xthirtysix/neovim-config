return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local harpoon = require 'harpoon'
        harpoon:setup {}

        vim.keymap.set('n', '<leader>hl', function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = 'Open harpoon buffer list' })
        vim.keymap.set('n', '<leader>ha', function()
            harpoon:list():append()
        end, { desc = 'Append item to harpoon list' })
        vim.keymap.set('n', '<leader>hr', function()
            harpoon:list():remove()
        end, { desc = 'Remove item from harpoon list' })
        vim.keymap.set('n', '<leader>hn', function()
            harpoon:list():next()
        end, { desc = 'Go to next harpooned file' })
        vim.keymap.set('n', '<leader>hp', function()
            harpoon:list():prev()
        end, { desc = 'Go to previous harpooned file' })
    end,
}
