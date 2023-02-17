set number
set tabstop=2
set shiftwidth=2
set laststatus=2
set autoindent
set statusline=%f "tail of the filename
hi Normal ctermfg=white ctermbg=black

colorscheme elflord
syntax on

runtime! ~/.vim/pack/plugins/start/lightline/autoload/lightline.vim
runtime! ~/.vim/pack/vim-javascript/start/vim-javascript/syntax/javascript.vim
runtime! ~/.vim/pack/syntastic/plugin/syntastic.vim

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" lightline plugin stuff
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
	\	'colorscheme': 'powerline',
	\   }
