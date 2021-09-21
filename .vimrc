set nocompatible

" Plugins
call plug#begin('~/.vim/plugged')
	Plug 'sheerun/vim-polyglot'	" syntax highlighting
	Plug 'sirtaj/vim-openscad'	" openscad syntax highlighting
	Plug 'airblade/vim-gitgutter'
	Plug 'scrooloose/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'tpope/vim-fugitive'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'majutsushi/tagbar'
	Plug 'fxn/vim-monochrome'
	Plug 'nightsense/snow'
	Plug 'xuhdev/vim-latex-live-preview'
	Plug 'junegunn/goyo.vim'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install' }
call plug#end()

" Plugin settings
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeDirArrowExpandable = '~'
let g:NERDTreeDirArrowCollapsible = '~'

let g:airline_theme = 'bubblegum'

let g:livepreview_previewer = 'open'

" Settings
set encoding=utf8
" set mouse=n " a -- mouse in all modes; i -- insert mode
set number
set relativenumber
set autoread
syntax enable
filetype plugin on
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set hlsearch incsearch "ignorecase
set magic " don't really what this does
set ffs=unix,dos,mac
"set spell! spelllang=en_gb
set noexpandtab " tabs to spaces? no
set scrolloff=15
set nojoinspaces
set splitright
set splitbelow
set ttyfast
set smarttab
set shiftround " what?
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set noshowmode
set noruler " no need when using airline
set cursorline
"set list " display unprintable characters
set listchars=tab:\¦\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*.class

" remove trailing white spaces and ^M chars
" copy/paste
augroup ws
	au!
	autocmd FileType c,cpp,java,php,js,json,css,scss,sass,py,rb,coffee,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
augroup end

au BufReadPost * if line("'\"")|execute("normal `\"")|endif

set background=dark
set t_Co=256
colorscheme iceberg " green | tokyo-metro | iceberg | monochrome | snow

autocmd FileType markdown set conceallevel=2
autocmd FileType markdown setlocal spell spelllang=en_gb

" whipping your own colorscheme
highlight ColorColumn ctermbg=238 ctermfg=99
highlight Comment ctermfg=244
highlight LineNr ctermfg=238
highlight CursorLine ctermbg=238
highlight CursorLineNR ctermfg=220
highlight Todo ctermbg=191 ctermbg=232
highlight MatchParen ctermbg=160
" transparent background
highlight Normal guibg=NONE ctermbg=NONE
highlight Visual term=reverse cterm=reverse
set colorcolumn+=80

if &term =~ '256color'
	" disable Background Color Erase (BCE) so that color schemes
	" render properly when inside 256-color tmux and GNU screen.
	" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
	set t_ut=
endif

" Remaps
nnoremap <Space> <Nop>
let mapleader = ' '

noremap <silent> j gj
noremap <silent> k gk
inoremap jj <Esc>
map <Esc><Esc> :up<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>j :wincmd j<CR>
map <Leader>k :wincmd k<CR>
map <Leader>l :wincmd l<CR>
map <Leader>h :wincmd h<CR>

nmap <C-p> :TagbarToggle<CR>
nmap <silent> <BS><BS> mz:call TrimTrailingWS()<CR>`z

" simple // commenting
" TODO: add functionality to comment according to filetype
vnoremap <silent> <Leader>/ :call ToggleComment()<CR>

function! ToggleComment()
	if matchstr(getline(line(".")),'^\s*\/\/.*$') == ''
		:execute "s:^://:"
	else
		:execute "s:^\s*//::"
	endif
endfunction

function! TrimTrailingWS ()
	if search('\s\+$', 'cnw')
		:%s/\s\+$//g
	endif
endfunction

if filereadable(".vim.custom")
	source .vim.custom
endif
