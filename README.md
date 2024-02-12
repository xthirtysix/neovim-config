# Neovim config

## Colorscheme
- [kanagawa](https://github.com/rebelot/kanagawa.nvim?tab=readme-ov-file)

## Plugins
- [lazy](https://github.com/folke/lazy.nvim) - package manager
- [telescope](https://github.com/nvim-telescope/telescope.nvim) - fuzzy finder
- [tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter) - improved syntax highlighting
- [harpoon2](https://github.com/ThePrimeagen/harpoon/tree/harpoon2) - mark buffers and switch between them with ease
- __LSP Suite__ - enables Language Server Protocol features
    - [mason](https://github.com/williamboman/mason.nvim)
    - [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file)
    - [nvim-lspconfig](https://www.google.com/search?q=git+neovim/nvim-lspconfig&sourceid=chrome&ie=UTF-8)
    - [telescope-ui-select](https://github.com/nvim-telescope/telescope-ui-select.nvim) - telescope plugin that displays modal with code actions picker

## Keymappings
| Keymap       |  Association       | Description                                   |
|--------------|--------------------|-----------------------------------------------|
| `<leader>tf` | _telescope find_   | Search for the file in current dir            |
| `<leader>tg` | _telescope grep_   | Search for the code snippet in current dir    |
| `<leader>ha` | _harpoon add_      | Add current file to the list                  |
| `<leader>hr` | _harpoon remove_   | Remove current file from list                 |
| `<leader>hl` | _harpoon list_     | Display list of marked files                  |
| `<leader>hn` | _harpoon next_     | Switch to the next marked buffer              |
| `<leader>hp` | _harpoon prev_     | Switch to the previous marked buffer          |
| `<leader>ld` | _lsp definition_   | Go to definition of entity under cursor       |
| `<leader>lD` | _lsp Declaration_  | Go to declaration of entity under cursor      |
| `<leader>li` | _lsp info_         | Display info about entity udner cursor        |
| `<leader>ca` | _code actions_     | Display modal with possible code action       |
