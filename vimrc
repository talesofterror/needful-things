set number
set tabstop=2
set shiftwidth=2
set laststatus=2
set autoindent

autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
syntax on

" runtime! ~/.vim/pack/plugins/start/lightline/autoload/lightline.vim
runtime! ~/.vim/pack/plugins/start/vim-javascript/syntax/javascript.vim
" runtime! ~/.vim/pack/plugins/start/syntastic/syntastic.vim
runtime! ~/.vim/pack/plugins/start/ale/plugin/ale.vim

" execute pathogen#infect()
syntax on
" filetype plugin indent on

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map :e :Explore

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

colorscheme elflord
