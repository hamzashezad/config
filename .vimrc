" Plugins
call plug#begin('~/.vim/plugged')
	Plug 'sheerun/vim-polyglot'    " <|
	Plug 'airblade/vim-gitgutter'  "  | essentials
	Plug 'scrooloose/nerdtree'     "  |
	Plug 'vim-airline/vim-airline' " <|
	Plug 'w0rp/ale' " linter
	Plug 'majutsushi/tagbar'
	Plug 'fxn/vim-monochrome'
	Plug 'arcticicestudio/nord-vim'
	Plug 'scrooloose/nerdcommenter'
call plug#end()

" Plugin settings
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" Settings
set encoding=utf8
set nocompatible
" set mouse=n " a -- mouse in all modes; i -- insert mode
set number
set relativenumber
set autoread
syntax enable
filetype plugin on
set wrapmargin=8 " i dont even if this works. also `wrap` doesnt seem to werk
set columns=120 " wrap columns cuz window is resizable
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set hlsearch incsearch
set magic
set ruler
set ffs=unix,dos,mac
set noexpandtab " tabs to spaces? no
" set clipboard+=unnamed,unnamedplus " system clipboard -- doesnt work
set scrolloff=15
set nojoinspaces
set splitright
set splitbelow
set ttyfast
set smarttab
set shiftround
set shiftwidth=4
set tabstop=4
set cursorline
set autoindent
set smartindent
set noshowmode
set list " display inprintable characters
set listchars=tab:\¦\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*.class

" remove trailing whitespaces and ^M chars
augroup ws
  au!
  autocmd FileType c,cpp,java,php,js,json,css,scss,sass,py,rb,coffee,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
augroup end

" whipin your own colorscheme
set background=dark
set t_Co=256
colorscheme monochrome " tokyo-metro || iceberg || monochrome || nord
highlight ColorColumn ctermbg=236 ctermfg=99
"highlight Comment ctermfg=grey
highlight CursorLine ctermbg=236
set colorcolumn+=81

if &term =~ '256color'
	" disable Background Color Erase (BCE) so that color schemes
	" render properly when inside 256-color tmux and GNU screen.
	" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
	set t_ut=
endif

" Remaps
noremap <silent> j gj
noremap <silent> k gk
inoremap jj <Esc>
map <Esc><Esc> :up<CR>
map <C-n> :NERDTreeToggle<CR>
map ; $
map <C-h> ^
nmap <C-p> :TagbarToggle<CR>
