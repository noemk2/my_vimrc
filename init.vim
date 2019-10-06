call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline-themes'
" Make sure you use single quotes 
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'fishbullet/deoplete-ruby'
" end
Plug 'sbdchd/neoformat'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdcommenter'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
call plug#end()

let g:airline_theme='simple'
let g:deoplete#enable_at_startup = 1
let g:neoformat_try_formatprg = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets'
let mapleader=","

"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {}<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
"inoremap <C-k> <bar
:nnoremap <C-n> :NERDTreeToggle<CR>
nmap <c-s> :Neoformat <cr> :w! <cr>
map <F2> :wq! <CR>
map <F5> :w! <CR>
map <F4> :q! <CR>

set history=3000
set relativenumber

let g:deoplete#enable_at_startup = 1
   " Set a single option
    call deoplete#custom#option('auto_complete_delay', 200)
    " Pass a dictionary to set multiple options
    call deoplete#custom#option({
    \ 'auto_complete_delay': 200,
    \ 'smart_case': v:true,
    \ })

"inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<tab>"
"inoremap <silent><expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <silent><expr> <Up>   pumvisible() ? "\<C-p>" : "\<Up>"
"imap  <bar>    <Plug>(neosnippet_expand_or_jump)
"imap  <Tab>    <Plug>(neosnippet_expand_or_jump)

filetype plugin on
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

