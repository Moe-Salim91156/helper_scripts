" ============================
" Plugin Manager Initialization
" ============================
call plug#begin('~/.vim/plugged')

" File explorer
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Fuzzy finder core and Vim integration
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Commenting utility
Plug 'tpope/vim-commentary'
nmap cc <Plug>Commentary
xmap cc <Plug>Commentary

" Start screen
Plug 'mhinz/vim-startify'


" Status Line with Icons
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Auto-pairs for brackets, quotes, etc.
Plug 'jiangmiao/auto-pairs'

" Visual undo tree
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}

" Code structure viewer
Plug 'preservim/tagbar', {'on': 'TagbarToggle'}

" Async linting/fixing (preferred over syntastic)
Plug 'dense-analysis/ale'

" C/C++ IDE features
Plug 'vim-scripts/c.vim'
Plug 'octol/vim-cpp-enhanced-highlight'

" Shell syntax
Plug 'arzg/vim-sh'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" Smooth scrolling
Plug 'terryma/vim-smooth-scroll'

" YAML support
Plug 'stephpy/vim-yaml'

" Terminal integration
Plug 'kassio/neoterm'

" Color schemes
Plug 'sainnhe/everforest'

" Status line
Plug 'vim-airline/vim-airline'

" Optional: Surround plugin
Plug 'tpope/vim-surround'

call plug#end()

" ============================
" General Settings
" ============================
set undofile
" Enable clipboard support
set clipboard=unnamed     " Use * register (primary selection)
set clipboard=unnamedplus " Use + register (system clipboard)
set clipboard=unnamed,unnamedplus " Use both
" Now y, d, p automatically use system clipboard
set undodir=~/.vim/undodir
set undolevels=10000
set undoreload=10000
if !isdirectory($HOME."/.vim/undodir")
    call mkdir($HOME."/.vim/undodir", "p", 0700)
endif

let mapleader = " "

syntax on
filetype plugin indent on
set completeopt=menuone,noinsert,noselect
set number
set relativenumber
set mouse=a
set cursorline
set clipboard=unnamedplus
set signcolumn=yes
set scrolloff=5
set showcmd
set ruler
set foldmethod=syntax
set foldlevel=99

if has('termguicolors')
  set termguicolors
endif

" ============================
" Key Mappings
" ============================
nnoremap <leader>ft :NERDTreeToggle<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <A-Left>  <C-w>h
nnoremap <A-Right> <C-w>l
nnoremap <A-Up>    <C-w>k
nnoremap <A-Down>  <C-w>j
nnoremap <leader>sw <C-w>r
tnoremap <C-n><C-n> <C-\><C-n>
noremap <silent> <S-Down>  :call smooth_scroll#down(5, 5, 2)<CR>
noremap <silent> <S-Up>    :call smooth_scroll#up(5, 5, 2)<CR>
noremap <silent> <S-Right> 5zl
noremap <silent> <S-Left>  5zh
nnoremap <space>za za
nnoremap <leader>nn :!norm_dir %<CR>
nnoremap <leader>zz :!cleaner ~<CR>
nnoremap <leader>za :!clean <CR>
nnoremap <leader>push :!push %<CR>



" ============================
" Plugin-specific Settings
" ============================
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = "right"
let g:smooth_scroll_hide_cursor = 1

let g:ale_linters = {
\   'python': ['pylsp'],
\   'c': ['clangd'],
\   'cpp': ['clangd'],
\   'sh': ['shellcheck'],
\}
let g:ale_fixers = {
\   'python': ['black'],
\   'sh': ['shfmt'],
\}
let g:ale_fix_on_save = 1

" ============================
" Norminette Integration via ALE
" ============================
" You can add a custom ALE linter for Norminette if needed.

" ============================
" Colorscheme and Highlights
" ============================
let g:everforest_background = 'hard'
let g:everforest_enable_italic = 1
colorscheme everforest


highlight Normal ctermbg=NONE guibg=NONE
highlight LineNr       guifg=#40506B guibg=#1F2430
highlight CursorLine   guibg=#2B3345
highlight Comment      guifg=#6B9DD9 gui=italic
highlight Constant     guifg=#7FD97F
highlight String       guifg=#7FD97F
highlight Identifier   guifg=#7FD97F
highlight Keyword      guifg=#4C72B8 gui=bold
highlight Function     guifg=#7FD6D1
highlight Statement    guifg=#4C72B8 gui=bold
highlight Type         guifg=#C87FC7
highlight Special      guifg=#E05172
highlight Error        guifg=#E05172
highlight WarningMsg   guifg=#E68B5C
highlight Todo         guifg=#F0D87D gui=bold
highlight CursorLineNr guifg=#F7FAFD guibg=#2B3345 gui=bold
highlight Search       guibg=#7FD6D1 guifg=#1F2430
highlight IncSearch    guibg=#E05172 guifg=#1F2430
highlight Visual       guibg=#40506B guifg=NONE
highlight VertSplit    guifg=#40506B guibg=#1F2430
highlight StatusLine   guibg=#2B3345 guifg=#F7FAFD
highlight Pmenu        guibg=#2B3345 guifg=#E6EBF5
highlight PmenuSel     guibg=#7FD6D1 guifg=#1F2430 gui=bold

" ============================
" Airline Configuration
" ============================
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'
let g:airline_enable_branch = 1
let g:airline_enable_filetype = 1

" ============================
" Startify Configuration
" ============================
let g:webdevicons_enable_startify = 1
let g:startify_list_order = ['commands', 'sessions', 'files', 'dir']
let g:startify_commands = [
      \ { 'f': [ 'Find Files (FZF)', 'Files' ] }
      \ ]
let g:startify_custom_header = [
      \ '===========================================================',
      \ '██████      ██████     ██████████████████████████',
      \ '██████      ██████     ██████████████████████████',
      \ '██████      ██████     ██████              ██████',
      \ '██████      ██████     ██████              ██████',
      \ '██████      ██████                         ██████',
      \ '██████      ██████                         ██████',
      \ '██████      ██████     Vim                 ██████',
      \ '██████████████████                         ██████',
      \ '██████████████████       ████████████████████████',
      \ '██████████████████       ████████████████████████',
      \ '            ██████       ██████',
      \ '            ██████       ████████████████████████',
      \ '            ██████       ████████████████████████'
      \ ]
autocmd VimEnter * if argc() == 0 | Startify | endif

