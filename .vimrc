"Vim Settings
set nocp
set cmdheight=2
set nowrap
set cc=95
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set scrolloff=8
set nu
set relativenumber
set encoding=utf-8
set hlsearch
set nohls
set incsearch
set termguicolors
set signcolumn=yes
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set completeopt=menuone,noinsert,noselect
set bg=dark
set cursorline

"Vim mappings
let mapleader = " "
nmap <leader>c gcc
nnoremap <leader>p "+p
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>md :MarkdownPreview<CR>
nnoremap <leader>t :term<CR>
nnoremap <c-d> <c-d>zz
nnoremap <c-u> <c-u>zz
vnoremap <leader>y "+y
inoremap jj <Esc>
inoremap { {}<left>
inoremap [ []<left>
inoremap ( ()<left>
inoremap <c-t> <c-x><c-o>
imap <c-e> <c-y>,

"Auto commands
augroup RAMON
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
    autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html,*.xml PrettierAsync
    autocmd BufWritePre *.hcl,*.tf,*.tfvars,*.terraformrc,*terraform.rc,*.tfstate TerraformFmt
    autocmd BufWritePost *.go silent GoMetaLinter
    autocmd BufEnter *.json set foldmethod=syntax
augroup end

" Plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }
Plug 'chrisbra/csv.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'hashivim/vim-terraform'
Plug 'gruvbox-community/gruvbox'
Plug 'dense-analysis/ale'
Plug 'jayli/vim-easycomplete'
Plug 'SirVer/ultisnips'
call plug#end()

let g:airline_section_z='%p%% ln: %l/%L cn=%c'
let g:prettier#quickfix_enabled = 0
let g:mkdp_markdown_css = '/home/ramon/.vim/static/md_preview.css'
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
