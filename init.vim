set number
set tabstop=4
set shiftwidth=4

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'sainnhe/sonokai'

call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

if has('termguicolors')
      set termguicolors
endif

let g:sonokai_style = 'atlantis'
let g:sonokai_better_performance = 1

let g:airline_theme = 'sonokai'

colorscheme sonokai
