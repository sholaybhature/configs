syntax on
set number
colorscheme atlas
let &t_SI = "\<esc>[5 q" " blinking vertical bar for insert mode
let &t_EI = "\<esc>[4 q" " solid underscore for normal mode
let &t_SR = "\<esc>[3 q" " blinking underscore for replace mode

set shiftwidth=2 " shift width to 2 spaces
set tabstop=2 " tab width to 2 spaces
set expandtab " space instead of tabs

set incsearch " highlight words as you type
set ignorecase " ignore case when searching
set smartcase " do the magic vim!
set hlsearch " highlight search result
set showmatch " highlight brackets ig?
set autoindent " autoindent like previous line
set wildmode=longest,list " auto completions
set cc=80 " 80 column coding border
set encoding=UTF-8 " set encoding
let mapleader = "/"
filetype plugin indent on " auto indenting depending on file type

call plug#begin("~/.vim/plugged")
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', {'do': { -> fzf#install()} }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

source $HOME/.config/nvim/plug-config/coc.vim

" copy paste
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

let g:NERDSpaceDelims=1
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

" golang
" " disable all linters as that is taken care of by coc.nvim
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []

" don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0

" run go imports on file save
let g:go_fmt_command = "goimports"

" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_def_mapping_enabled = 0

set statusline=
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number

" THE END
