call plug#begin(stdpath('data') . '/plugged')
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
	Plug 'nvim-treesitter/playground'
	Plug 'jparise/vim-graphql'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'TimUntersberger/neogit'
	Plug 'neovim/nvim-lspconfig'
	Plug 'rktjmp/lush.nvim'
	Plug 'lewis6991/gitsigns.nvim'
	Plug 'nvim-lua/lsp-status.nvim'
	Plug 'pgdouyon/vim-yin-yang'
	Plug 'wbthomason/vim-nazgul'
	Plug 'pgdouyon/vim-alayas'
call plug#end()

set background=light

set tabstop=4
set shiftwidth=4
set nohlsearch
set breakindent
set linebreak
set exrc

set hidden

set smartindent
set autoindent

set signcolumn=yes

set splitright
set splitbelow

set list
set listchars=tab:\¦\ ,trail:•,extends:»,precedes:«,space:·

set nocursorline

let netrw_list_hide='.*\.gfo$'
let g:netrw_winsize = 20


set colorcolumn=89

if has("termguicolors")
	set termguicolors
endif

colorscheme baby


nnoremap <Space> <Nop>
let mapleader=' '

map <Leader>h :wincmd h<CR>
map <Leader>j :wincmd j<CR>
map <Leader>k :wincmd k<CR>
map <Leader>l :wincmd l<CR>
map <Leader>s 1z=
map <Leader>n :Lex<CR>
" go to next occurance of word under cursor
map <Leader>a yiw/<C-R>"<CR>


autocmd FileType go setlocal omnifunc=v:lua.vim.lsp.omnifunc


lua << EOF
local lsp_status = require('lsp-status')
lsp_status.register_progress()

local nvim_lsp = require'lspconfig'

local on_attach = function(client, bufnr)
	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
	local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

	buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

	local opts = { noremap=true, silent=true }

	buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
	buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
	-- buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
	buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
	-- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
	-- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
	-- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
	-- buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
	buf_set_keymap('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
	-- buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
	-- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
	-- buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
	-- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
	-- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
	-- buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
	-- buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

local servers = { 'tsserver', 'gopls' }

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup{
		on_attach = on_attach,
		flags = {
			debounce_text_changes = 150
		}
	}
end

require'nvim-treesitter.configs'.setup {
	ensure_installed = { "graphql", "go", "typescript", "javascript", "python" },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}

require'neogit'.setup{}

require'gitsigns'.setup{
	signs = {
		add          = {hl = 'GitSignsAdd'   , text = '┃', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
		change       = {hl = 'GitSignsChange', text = '┃', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
		delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
		topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
		changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
	},
	signcolumn = true,
	numhl = false,
	linehl = false,
	word_diff = false
}
EOF
