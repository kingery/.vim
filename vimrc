"call plug#begin()
"" load plugins here
"
"" nerd tree
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"" autocomplete
"" Plug 'Valloric/YouCompleteMe'
"" powerline - added display
"Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"
"call plug#end()
"
"" ignore .pyc files in NERDTree
"let NERTreeIgnore=['\.pyc$', '\~$']

" set tab indent to 4 spaces
set nocompatible

set is 
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" syntax highlighting
syntax on

" allow all backspaces within insert mode
set bs=2

" dsiplay line number, and cursor position
set ruler
set number
set numberwidth=3

" color scheme
color zenburn 

" no beep when illegal key pressed
set visualbell

" confirm save upon exitiing w/o saving changes
set confirm

" case-insensitive search
set ignorecase
set smartcase

" set up folding preferences
set foldmethod=indent
set foldlevel=99

" larger status line
" set statusline=2

" cursor line
set cursorline

"hi cursorline term=bold cterm=bold guibg=grey40
set colorcolumn=80

" visual line breaks at words
set wrap
set linebreak

set wildmenu "graphical search for autocomplete
set lazyredraw "don't redraw unless necessary
set showmatch "highlight matching bracket/parentheses/etc

" comment based on file-type
filetype on
function CommentLines()
    exe ":s@^@".g:Comment."@g"
    exe ":s@$@".g:EndComment."@g"
endfunction
" map visual mode keycombo 'co' to this function
vmap co :call CommentLines()<CR>


" set Leader to <Space>
let mapleader = '<space>'

" key mappings
nmap <S-space> i
imap jj <Esc>
nmap :Q :q
nmap ss :w<CR>
nmap ff gt
nmap aa gT
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l
nmap <C-h> gT
nmap <C-l> gt

nnoremap <leader>w :w<CR>
nnoremap <leader>i I
nnoremap <leader>d dd
nnoremap <leader>c ddO

