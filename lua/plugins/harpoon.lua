return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local harpoon = require 'harpoon'
        harpoon:setup {}

        local conf = require('telescope.config').values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require('telescope.pickers')
                .new({}, {
                    prompt_title = 'Harpoon',
                    finder = require('telescope.finders').new_table {
                        results = file_paths,
                    },
                    previewer = conf.file_previewer {},
                    sorter = conf.generic_sorter {},
                })
                :find()
        end

        vim.keymap.set('n', '<leader>hl', function()
            toggle_telescope(harpoon:list())
        end, { desc = 'Open harpoon window' })
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
