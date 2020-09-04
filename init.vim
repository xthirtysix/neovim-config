" == VIM PLUG ================================
call plug#begin('~/.vim/plugged')
"------------------------ COC ------------------------
" coc for tslinting, auto compmete and prettier
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
" coc extensions
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']
"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" vim-tsx will do all the coloring for jsx in the .tsx file
Plug 'ianks/vim-tsx'
"------------------------ VIM TSX ------------------------
" by default, if you open tsx file, neovim does not show syntax colors
" typescript-vim will do all the coloring for typescript keywords
Plug 'leafgarland/typescript-vim'
"------------------------ VIM AIRLINE------------------------
" Statusbar for VIM
Plug 'vim-airline/vim-airline'
"------------------------ VIM NERDREE ------------------------
" Sidebar filetree
Plug 'preservim/nerdtree'
"------------------------ THEME ------------------------
" most importantly you need a good color scheme to write good code :D
Plug 'franbach/miramare'
Plug 'arcticicestudio/nord-vim'
Plug 'sickill/vim-monokai'
Plug 'morhetz/gruvbox'
call plug#end()
" == VIMPLUG END ================================
" == POPUP ON HOVER =============================
function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#util#has_float() == 0)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()
" == POPUP ON HOVER END ========================
" == APPEARANCE ================================
set number relativenumber
set termguicolors
let g:miramare_enable_italic = 1
let g:miramare_disable_italic_comment = 1
colorscheme gruvbox
"colorscheme nord
let g:airline_theme = 'gruvbox'
"------------------------ NERDTREE ----------------------------
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" == APPEARANCE END ================================
" == AUTOCMD ================================ 
" by default .ts file are not identified as typescript and .tsx files are not
" identified as typescript react file, so add following
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
