call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'haishanh/night-owl.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'townk/vim-autoclose'
call plug#end()

" Plug 'scrooloose/nerdtree'
" set tabstop=4
" set softtabstop=0
" set shiftwidth=4
" set expandtab
" set noshowmode
set nu
set laststatus=2

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

""""" enable the theme
syntax enable
colorscheme night-owl

" To enable the lightline theme
let g:lightline = { 'colorscheme': 'nightowl' }

inoremap jk <Esc>
" map <C-o> :NERDTreeToggle<CR>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0 
let g:netrw_altv = 1 
let g:netrw_winsize = 25
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" check: |netrw-browse-maps| for more mappings
map <C-b> :Lexplore<CR>
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
