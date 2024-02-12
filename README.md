# Neovim config

## Colorscheme
- [kanagawa](https://github.com/rebelot/kanagawa.nvim?tab=readme-ov-file)

## Plugins
- [lazy](https://github.com/folke/lazy.nvim) - package manager
- [telescope](https://github.com/nvim-telescope/telescope.nvim) - fuzzy finder
- [tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter) - improved syntax highlighting
- [harpoon2](https://github.com/ThePrimeagen/harpoon/tree/harpoon2) - mark buffers and switch between them with ease

## Keymappings
| Keymap       |  Association     | Description                                 |
|--------------|------------------|---------------------------------------------|
| `<leader>tf` | _telescope find_ | Search for the file in current dir          |
| `<leader>tg` | _telescope grep_ | Search for the code snippet in current dir  |
| `<leader>ha` | _harpoon add_    | Add current file to the list                |
| `<leader>hr` | _harpoon remove_ | Remove current file from list               |
| `<leader>hl` | _harpoon list_   | Display list of marked files                |
| `<leader>hn` | _harpoon next_   | Switch to the next marked buffer            |
| `<leader>hp` | _harpoon prev_   | Switch to the previous marked buffer        |
