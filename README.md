# Neovim config

## Colorscheme

- [catppuccin](https://github.com/catppuccin/nvim)

## Plugins

- [lazy](https://github.com/folke/lazy.nvim) - package manager
- [lualine](https://github.com/nvim-lualine/lualine.nvim) - status bar
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) - file explorer for neovim
- [telescope](https://github.com/nvim-telescope/telescope.nvim) - fuzzy finder
- [tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter) - improved syntax highlighting
- [harpoon2](https://github.com/ThePrimeagen/harpoon/tree/harpoon2) - mark buffers and switch between them with ease
- [vim-go](https://github.com/fatih/vim-go) - go lang support and utils
- [git-signs](https://github.com/lewis6991/gitsigns.nvim) - decorations for changed, added, removed lines
- [nvim-highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors) - highlight CSS colors
- [nvim-px-to-rem](https://github.com/jsongerber/nvim-px-to-rem) - convert css px to rem
- __LSP suite__ - enables Language Server Protocol features
  - [mason](https://github.com/williamboman/mason.nvim)
  - [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file)
  - [nvim-lspconfig](https://www.google.com/search?q=git+neovim/nvim-lspconfig&sourceid=chrome&ie=UTF-8)
  - [telescope-ui-select](https://github.com/nvim-telescope/telescope-ui-select.nvim) - telescope plugin that displays modal with code actions picker
- [none-ls](https://github.com/nvimtools/none-ls.nvim) - code formatting settings
- __Snippets and completions__ - enables popup under the cursor with autocompletion suggestions
  - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - completion engine, that uses external sources for autocompletions
  - [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - snippets for Lua
  - [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - provides autocompletion from LSPs
  - [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - autocompletion source for buffer words
  - [cmp-path](https://github.com/hrsh7th/cmp-path) - autocompletion source for files system paths
  - [lspkind](https://github.com/onsails/lspkind.nvim) - pictograms for autocompletion types
- __mini.nvim suite__ - mini-modules that provides different functionality
  - [mini.animate](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-animate.md) - enables animations for common actions
  - [mini.comment](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-comment.md) - allows to comment code lines easily
  - [mini.indentscope](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-indentscope.md) - renders indent-line for focused code block
  - [mini.pairs](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-pairs.md) - creates pairs for brackets and quotes

## Key mappings

| Keymap       |  Association       | Description                                   |
|--------------|--------------------|-----------------------------------------------|
| `<leader>e`  | _explorer_         | Open file explorer                            |
| `<leader>tf` | _telescope find_   | Search for the file in current dir            |
| `<leader>tg` | _telescope grep_   | Search for the code snippet in current dir    |
| `<leader>ha` | _harpoon add_      | Add current file to the list                  |
| `<leader>hr` | _harpoon remove_   | Remove current file from list                 |
| `<leader>hl` | _harpoon list_     | Display list of marked files                  |
| `<leader>hn` | _harpoon next_     | Switch to the next marked buffer              |
| `<leader>hp` | _harpoon prev_     | Switch to the previous marked buffer          |
| `<leader>ld` | _lsp definition_   | Go to definition of entity under cursor       |
| `<leader>lD` | _lsp Declaration_  | Go to declaration of entity under cursor      |
| `<leader>li` | _lsp info_         | Display info about entity under cursor        |
| `<leader>lf` | _lsp format_       | Format opened file                            |
| `<leader>ca` | _code actions_     | Display modal with possible code action       |
| `<leader>pxl`| _px line_          | Convert px to rem in line under cursor        |
| `gc{*hjkl}`  | _comment_          | Comment code in direction                     |
| `gcc`        | _comment code_     | Comment single line                           |
| `[i`         | _start indent_     | Go to the beginning of indent                 |
| `]i`         | _end indent_       | Go to the end of indent                       |
