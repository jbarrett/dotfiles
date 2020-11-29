set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Carpetsmoker/auto_mkdir2.vim'
Bundle 'spacehi.vim'
Bundle 'current-func-info.vim'
Bundle 'chrisbra/Recover.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-sleuth'
Bundle 'motemen/xslate-vim'

filetype plugin indent on

set cindent
set smartindent
set autoindent

set tabstop=4
set shiftwidth=4
set expandtab

set pastetoggle=<F2>

syntax on
set ttymouse=xterm2
set mouse=n
set number
set ttymouse=xterm2

set nohlsearch

au BufNewFile,BufRead *.cgi set filetype=perl
au BufNewFile,BufRead *.fcgi set filetype=perl
au BufNewFile,BufRead *.pde,*.ino set filetype=c
au BufNewFile,BufRead *.md set filetype=markdown

let g:spacehi_spacecolor="ctermfg=red cterm=underline"
let g:spacehi_tabcolor="ctermfg=blue cterm=underline"

let g:Powerline_symbols = 'fancy'

let Tlist_Auto_Open = 1

let perl_sub_signatures = 1

autocmd syntax * SpaceHi

set t_Co=256
let g:zenburn_high_Contrast=1
colorscheme zenburn

map <C-P> <Esc>:tabp<CR>
cmap <C-P> <Esc>:tabp<CR>
map <C-N> <Esc>:tabn<CR>
cmap <C-N> <Esc>:tabn<CR>

map <ESC>[1;5D <C-Left>
map <ESC>[1;5C <C-Right>
map! <ESC>[1;5D <C-Left>
map! <ESC>[1;5C <C-Right>

nnoremap <silent> <F8> :TlistToggle<CR>

hi MatchParen NONE
hi MatchParen term=underline cterm=underline gui=underline

