set number
set expandtab " converts tabs to spaces
set autoindent " automatically copy indentation from previous line
set smartindent " indents one extra level according to current syntax
" indents with tab = 4 spaces
set tabstop=4
set shiftwidth=4
set mouse=a
set ls=2
set ruler
set clipboard=unnamedplus
set hidden
set directory=~/.vim/tmp
au BufNewFile,BufRead *.twig set ft=htmljinja

" map leader
let mapleader = ","

" highlight trailing spaces
set list
set listchars=eol:ᛎ,trail:‧,tab:▹∙,nbsp:ⅹ
match ErrorMsg '\s\+$'

function! StripTrailingWhitespace()
  normal mZ
  %s/\s\+$//e
  normal `Z
endfunction

autocmd FileType php,js,css,html,xml,yaml,vim autocmd BufWritePre <buffer> :call StripTrailingWhitespace()

" CURSOR
highlight Cursor guifg=white guibg=white
set cursorline

" Ctags
set tags+=vendor.tags
inoremap <F5> <C-O>:call PhpInsertUse()<CR>
noremap <F5> :call PhpInsertUse()<CR>
inoremap <F6> <C-O>:call PhpExpandClass()<CR>
noremap <F6> :call PhpExpandClass()<CR>
" tags jump
nmap <silent> <F2> "zyiw:exe ":tselect ".@z.""<CR>

" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'The-NERD-tree'
Plugin 'UltiSnips'
Plugin 'kien/ctrlp.vim.git'
Plugin 'SirVer/ultisnips'
Plugin 'sjbach/lusty.git'
Plugin 'Lokaltog/vim-powerline.git'
Plugin 'arnaud-lb/vim-php-namespace'

let g:Powerline_symbols = 'fancy'


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
nnoremap <leader>c :!rm -rf ~/.vim/tmp/*<CR><CR>

" word navigation
nmap <C-Right> w
nmap <C-Left> b

nmap <C-b> <leader>lb

" ULTISNIPS

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
