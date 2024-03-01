imap jj <Esc>
let mapleader=" "
filetype plugin indent on
nnoremap ,, A,<Esc>
nnoremap ;; A;<Esc>
set mouse=a
set number
set hidden
set expandtab
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set autoindent
set encoding=utf8
set history=5000
set autoread
set clipboard=unnamedplus
colorscheme habamax
highlight Normal ctermbg=none " Remove background color
:au FocusLost * :wa " Auto save when focus is lost
:au BufLeave * :wa " Auto save when buffer is left
vnoremap p "0p
nnoremap <leader>f gg=G<C-o>
nnoremap <leader>z :FZF<CR>
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
nnoremap <C-k> :bd<CR>:bn<CR>
nnoremap <leader>w <C-w><C-w>
nnoremap <M-w> <C-w><C-w>
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap c= 0f=lv$c<CR><Esc>kA


" Vim-Plug settings
call plug#begin()
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'akinsho/toggleterm.nvim',
Plug 'vim-airline/vim-airline',
Plug 'tpope/vim-fugitive',
Plug 'junegunn/fzf',
Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'},
call plug#end()


" NERDTree settings
nnoremap <leader>n :NERDTreeFind<CR>
autocmd VimEnter * NERDTree


" Code Completion
nnoremap <silent> gd <Plug>(coc-definition) zt
nnoremap <silent> gy <Plug>(coc-type-definition)zz
nnoremap <silent> gr <Plug>(coc-references)zz
nnoremap <silent> [g <Plug>(coc-diagnostic-prev)zz
nnoremap <silent> ]g <Plug>(coc-diagnostic-next)zz
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
nnoremap <leader>do <Plug>(coc-codeaction)
nnoremap <leader>rn <Plug>(coc-rename)
let g:coc_global_extensions = [
            \ 'coc-tsserver',
            \ 'coc-json',
            \ 'coc-css',
            \ 'coc-eslint',
            \ 'coc-prettier',
            \ 'coc-jedi'
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

" Ensure the screen centers on jumping command
nnoremap <silent> <C-y> <C-y>zz
nnoremap <silent> <C-u> <C-u>zz
nnoremap <silent> <C-d> <C-d>zz
nnoremap <silent> <C-b> <C-b>zz
nnoremap <silent> <C-f> <C-f>zz
nnoremap <silent> <C-o> <C-o>zz
nnoremap <silent> <C-i> <C-i>zz
nnoremap <silent> <C-t> <C-t>zz
nnoremap <silent> <C-g> <C-g>zz
