imap jj <Esc>
let mapleader=" "
filetype plugin indent on
nmap ,, A,<Esc>
nmap ;; A;<Esc>
set mouse=a
set number
set hidden
set expandtab
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set encoding=utf8
set history=5000
colorscheme habamax
highlight Normal ctermbg=none " Remove background color
:au FocusLost * :wa " Auto save when focus is lost
:au BufLeave * :wa " Auto save when buffer is left
vnoremap p "0p " Keep last register after pasting in visual mode
nmap <leader>f gg=G <C-o> <C-o>
nmap <leader>t :Telescope find_files<CR>
set autoread
nmap gn :bnext<CR>
nmap gp :bprevious<CR>
nmap gq :bd<CR> :bn<CR> :NERDTreeFind<CR><CR>


" Vim-Plug settings
call plug#begin()
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'akinsho/toggleterm.nvim',
Plug 'vim-airline/vim-airline',
Plug 'tpope/vim-fugitive',
Plug 'rbong/vim-flog',
Plug 'tpope/vim-capslock',
Plug 'Shougo/denite.nvim',
Plug 'junegunn/fzf',
Plug 'prabirshrestha/vim-lsp',
call plug#end()


" NERDTree settings
nnoremap <leader>n :NERDTreeFocus<CR>
autocmd VimEnter * NERDTree


" Code Completion
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)
let g:coc_global_extensions = [
            \ 'coc-tsserver',
            \ 'coc-json',
            \ 'coc-css',
            \ 'coc-eslint',
            \ 'coc-prettier',
            \ 'coc-pyright'
            \ ]
" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" Airline settings
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#capslock#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#formatter = 'default'
set guifont=Hack


" Toggleterm settings
lua require("toggleterm").setup({
            \ direction = 'float',
            \ open_mapping = [[<c-\>]],
            \ })


