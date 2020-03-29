call plug#begin('~/.vim/plugged')

" Plugin section
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
"Lean & mean status/tabline for vim that's light as air.
"Plug 'bling/vim-airline'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'evanleck/vim-svelte'
Plug 'arcticicestudio/nord-vim'

call plug#end()

"Config Section

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let g:NERDTreeShowBookmarks = 1
" Deoplete settings, see above
"let g:deoplete#enable_at_startup = 1

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs

silent! colorscheme nord

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle Nerdtree with CTRL+n
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
" Autostart NerdTree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
