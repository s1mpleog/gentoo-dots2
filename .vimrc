" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugin list
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

let mapleader = " "

" Show inline error messages like Neovim/IDEs
autocmd CursorHold * silent! call CocActionAsync('showSignatureHelp')

" Enable underlining of errors
highlight CocErrorHighlight cterm=underline gui=underline
highlight CocWarningHighlight cterm=underline gui=underline
highlight CocInfoHighlight cterm=underline gui=underline
highlight CocHintHighlight cterm=underline gui=underline

filetype plugin on
filetype indent on

" General Vim settings
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set hlsearch
set incsearch
set cursorline
set mouse=a

" Key mappings
nnoremap <leader>ff :Files<CR>
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>gd :CocAction definition<CR>

" Color scheme
"colorscheme catppuccin

" Airline configuration (example)
"let g:airline_theme='gruvbox'

" ALE configuration (example)
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1

" Change error color (red)
highlight CocErrorHighlight ctermfg=Red guifg=#FF5555
highlight CocErrorSign ctermfg=Red guifg=#FF5555

" Change warning color (yellow)
highlight CocWarningHighlight ctermfg=Yellow guifg=#F1FA8C
highlight CocWarningSign ctermfg=Yellow guifg=#F1FA8C

" Change info color (blue)
highlight CocInfoHighlight ctermfg=Blue guifg=#8BE9FD
highlight CocInfoSign ctermfg=Blue guifg=#8BE9FD

" Change hint color (cyan)
highlight CocHintHighlight ctermfg=Cyan guifg=#50FA7B
highlight CocHintSign ctermfg=Cyan guifg=#50FA7B


" coc.nvim configuration (example - more in coc.nvim documentation)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let l:col = col('.') - 1
  return l:col == 0 || getline('.')[l:col - 1]  =~# '\s'
endfunction

nnoremap <silent><expr> <leader>jd <Cmd>CocAction definition<CR>
nnoremap <silent><expr> <leader>jy <Cmd>CocAction typeDefinition<CR>
nnoremap <silent><expr> <leader>gi <Cmd>CocAction implementation<CR>
nnoremap <silent><expr> <leader>gr <Cmd>CocAction references<CR>
