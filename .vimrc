set number
set expandtab " converts tabs to spaces
set autoindent " automatically copy indentation from previous line
set smartindent " indents one extra level according to current syntax
" indents with tab = 4 spaces
set tabstop=4
set shiftwidth=4
set mouse=a
set ls
set ruler
set clipboard=unnamedplus
set hidden
set directory=~/.vim/tmp
au BufNewFile,BufRead *.twig set ft=jinja

" CURSOR
highlight Cursor guifg=white guibg=white
set cursorline

" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'The-NERD-tree'
Plugin 'UltiSnips'
Plugin 'kien/ctrlp.vim.git'
Plugin 'lepture/vim-jinja'
Plugin 'SirVer/ultisnips'

filetype plugin indent on

set wildignore=data/**,app/cache/**,web/bundles/**,src/*/*Bundle/vendor,src/*/vendor,old/*,app/lib/*,node_modules/**

let g:ctrlp_custom_ignore = {
  \ 'dir': '\v([\/]\.(git|hg|svn))|([\/]node_modules)|([\/]compiled)|([\/]dist)|([\/]app/cache)|([\/]bower_components)|([\/]doc)$',
  \ }

" copy to x buffer
vmap <leader>y "+y<CR>
nmap <leader>p "+p<CR>

set t_Co=256
colorscheme molokai

" clear vim cache
nnoremap <Leader><C-c> :!rm -rf ~/.vim/tmp/*<CR>

" ULTISNIPS

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
