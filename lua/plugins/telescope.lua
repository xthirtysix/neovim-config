return {
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set(
                "n", "<leader>tf",
                builtin.find_files,
                { desc = "Search for the files in current directory" }
            )
            vim.keymap.set(
                "n", "<leader>tg",
                builtin.live_grep,
                { desc = "Grep in current directory" }
            )
        end
    }
}
