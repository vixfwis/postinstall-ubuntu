call plug#begin(stdpath('data') . '/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
Plug 'zacanger/angr.vim'
Plug 'morhetz/gruvbox'
call plug#end()

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

autocmd vimenter * ++nested colorscheme gruvbox
syntax on
let g:airline_theme='angr'
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:fzf_layout = {'window': {'width': 0.9, 'height': 0.8}}
set tabstop=4 softtabstop=4 noexpandtab shiftwidth=4 nosmarttab

nnoremap <silent> <leader>h :noh<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sc :source $MYVIMRC<cr>
