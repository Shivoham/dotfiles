let g:ruby_host_prog="/usr/local/bin/neovim-ruby-host"
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

lua require('shivoham')
