call plug#begin(stdpath('data') . '/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'zacanger/angr.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'fidian/hexmode'
call plug#end()

if has('termguicolors')
	set termguicolors
endif
set background=dark
let g:gruvbox_material_better_performance = 1

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

autocmd vimenter * ++nested colorscheme gruvbox-material
syntax on
set number
let g:airline_theme='gruvbox_material'
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:fzf_layout = {'window': {'width': 0.9, 'height': 0.8}}
set autoindent noexpandtab tabstop=4 shiftwidth=4

nnoremap <silent> <leader>h :noh<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sc :source $MYVIMRC<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>t :Tags<cr>
nnoremap <leader>f :Files<cr>
