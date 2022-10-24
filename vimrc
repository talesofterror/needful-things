set number
set tabstop=4
set laststatus=2
set statusline=%f "tail of the filename

colorscheme elflord
syntax on

runtime! ~/.vim/pack/plugins/start/lightline/autoload/lightline.vim
runtime! ~.vim/pack/vim-javascript/start/vim-javascript/syntax/javascript.vim

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>
