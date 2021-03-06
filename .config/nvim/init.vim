" Minimal Vimrc
set so=999
imap jj <Esc>
set number
set relativenumber
set nohlsearch

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'davidhalter/jedi-vim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'

Plug 'wsdjeg/FlyGrep.vim'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdTree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'

Plug 'https://github.com/alok/notational-fzf-vim'
Plug 'https://github.com/martinda/Jenkinsfile-vim-syntax.git'

call plug#end()

" Set leader to comma
let mapleader = ","

" Toggle nerdtree with ctrl+n
nmap <C-n> :NERDTreeToggle<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1

" Launch FZF on ',+f'
noremap <Leader>f :FZF<CR>

" Clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Buffer
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

" Remap up and down arrow keys to ctrl+j and ctrl+k
" mostly useful for autocompletion options
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"


" Notational Velocity Vim FZF Plugin
noremap <Leader>l :NV<CR>
let g:nv_search_paths = ['~/.logbook/notes', '~/.logbook']
let g:nv_default_extension = '.md'
let g:nv_create_note_key = 'ctrl-f'

" Theme
if (has("termguicolors"))
 set termguicolors
endif

let ayucolor="dark"   " for dark version of theme
colorscheme ayu
