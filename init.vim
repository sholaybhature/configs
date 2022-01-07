set cmdheight=1
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
let mapleader = "/"
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting
nnoremap <silent> <Esc><Esc> :let @/=""<CR>
call plug#begin("~/.vim/plugged")
"Our plugins will go in the middle
Plug 'arzg/vim-substrata'   " theme
" Plug 'gosukiwi/vim-atom-dark'
Plug 'tpope/vim-fugitive'   " for git
Plug 'tpope/vim-surround'   " cs for inserting quotes and other stuff
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'miyakogi/seiya.vim'
Plug 'nvim-lua/plenary.nvim'
" Plug 'folke/todo-comments.nvim'
call plug#end()
source $HOME/.config/nvim/plug-config/coc.vim
let g:NERDSpaceDelims = 1
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']
set termguicolors
colorscheme substrata
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" autocmd VimEnter * NERDTree
" spits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <C-f> :Files<CR>
" FORMATTERS
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType html setlocal formatprg=js-beautify\ --type\ html
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css
" airline
" set statusline=
" set statusline +=%5*%{&ff}%*            "file format
" set statusline +=%3*%y%*                "file type
" set statusline +=%4*\ %<%F%*            "full path
" set statusline +=%2*%m%*                "modified flag
" set statusline +=%1*%=%5l%*             "current line
" set statusline +=%2*/%L%*               "total lines
" set statusline +=%1*%4v\ %*             "virtual column number
" set statusline +=%2*0x%04B\ %*          "character under cursor
set statusline=
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
" lua << EOF
"  require("todo-comments").setup {
"    -- your configuration comes here
"    -- or leave it empty to use the default settings
"    -- refer to the configuration section below
"  }
"EOF
