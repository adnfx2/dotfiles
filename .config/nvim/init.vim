" GENERAL SETTINGS

" recursive search
set path+=**
set wildignore+=node_modules/**,**/node_modules/**
"
" netrw tree-view 
let g:netrw_liststyle= 3
let g:netrw_banner=0

" hybrid numbers
set number relativenumber

" editor config
set shiftwidth=2
set expandtab
set lbr
set tabstop=2
"set breakindent
"set formatoptions=l

" keep buffer in background
set hidden

" command-line hight
set cmdheight=2

" default splits 
set splitbelow
set splitright

" PLUGINS

call plug#begin()

" theme ui
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'

" fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" file manager
Plug 'francoiscabrol/ranger.vim'

" core editor
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-obsession'

" coc autocompletion 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-eslint', 'coc-stylelint', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

" git
Plug 'tpope/vim-fugitive'

" web development
Plug 'mattn/emmet-vim'
Plug 'mlaursen/vim-react-snippets'
Plug 'gregsexton/MatchTag'

call plug#end()

" onedark.vim 
syntax on 
colorscheme onedark
let g:onedark_termcolors = 16
let g:airline_theme='onedark'

" fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" KEYMAPS

" coc
nmap <leader>ff :CocCommand prettier.formatFile<CR>
nmap <leader>fe :CocCommand eslint.executeAutofix<CR>

" emmet 
let g:user_emmet_leader_key=','

" move single line - unimpaired
nmap <C-k> [e
nmap <C-j> ]e

" Move multiple lines - unimpaired
vmap <C-j> ]egv
vmap <C-k> [egv

" fuzzy search 
nnoremap <leader>sf :Files<CR>
nnoremap <leader>sc :Ag 

" ranger.vim
let g:ranger_map_keys = 0
map <leader>rr :Ranger<CR>
