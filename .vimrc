set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Smart-Tabs'
Bundle 'spacehi.vim'
Bundle 'taglist.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'current-func-info.vim'

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

au BufNewFile,BufRead *.cgi set filetype=perl
au BufNewFile,BufRead *.fcgi set filetype=perl
au BufNewFile,BufRead *.pde,*.ino set filetype=c

autocmd Filetype ruby setlocal ts=2 sw=2 sts=0 noexpandtab
autocmd Filetype eruby setlocal ts=2 sw=2 sts=0 noexpandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab

let g:spacehi_spacecolor="ctermfg=red cterm=underline"
let g:spacehi_tabcolor="ctermfg=blue cterm=underline"

let g:Powerline_symbols = 'fancy'

let Tlist_Auto_Open = 1

autocmd syntax * SpaceHi

set t_Co=256
let g:zenburn_high_Contrast=1
colorscheme zenburn

map <C-P> <Esc>:tabp<CR>
cmap <C-P> <Esc>:tabp<CR>
map <C-N> <Esc>:tabn<CR>
cmap <C-N> <Esc>:tabn<CR>

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
    map <Esc>OH <Home>
    map! <Esc>OH <Home>
    map <Esc>OF <End>
    map! <Esc>OF <End>
endif

nnoremap <silent> <F8> :TlistToggle<CR>
