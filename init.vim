call plug#begin('~/.vim/plugged')
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'scrooloose/nerdcommenter'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
let g:deoplete#enable_at_startup = 1
call plug#end()
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets'
let mapleader=","

set history=10000
set number
nmap <c-s> :Prettier<cr> :w! <cr>
map <F2> :wq! <CR>
map <F3> :w! <CR>
:nnoremap <C-n> :NERDTreeToggle<CR>
let g:deoplete#enable_at_startup = 1
" let g:deoplete-filter-converter_remove_overlap
   " Set a single option
    call deoplete#custom#option('auto_complete_delay', 200)

    " Pass a dictionary to set multiple options
    call deoplete#custom#option({
    \ 'auto_complete_delay': 200,
    \ 'smart_case': v:true,
    \ })
"inoremap <silent><expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <silent><expr> <Up>   pumvisible() ? "\<C-p>" : "\<Up>"
"
"
inoremap <silent><expr> <Down>
		\ pumvisible() ? "\<C-n>" :
		\ <SID>check_back_space() ? "\<Down>" :
		\ deoplete#manual_complete()
		function! s:check_back_space() abort "{{{
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~ '\s'
		endfunction"}}}
inoremap <silent><expr> <Up>
		\ pumvisible() ? "\<C-p>" :
		\ <SID>check_back_space() ? "\<Up>" :
		\ deoplete#manual_complete()
		function! s:check_back_space() abort "{{{
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~ '\s'
		endfunction"}}}


imap <TAB>     <Plug>(neosnippet_expand_or_jump)
"smap <TAB>     <Plug>(neosnippet_expand_or_jump)
"xmap <TAB>     <Plug>(neosnippet_expand_target)
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"
"
filetype plugin on
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

