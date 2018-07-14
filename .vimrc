" enable pathogen
call pathogen#infect()

" solarized theme
syntax enable " Enable syntax highlighting
set background=dark " solarized dark
colorscheme solarized

" soft TAB settings
" set softtabstop=4 " number of spaces in TAB when editing
" set tabstop=4  " number of visual spaces per TAB
" set expandtab " make tabs spaces

" disable .netrwhist
let g:netrw_dirhistmax = 0

" TAB settings
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

" general editor settings
set number " show line numbers
set showcmd " show command in bottom bar
set cursorline " draw line to highlight current line
set showmatch " highlight matching parenthesis
set virtualedit=onemore " allows the cursor to go one more after the last char

" editor features
set wildmenu " visual autocomplete on vim commands
set lazyredraw " redraw only when needed, good for macros

" search features
set incsearch " search as characters are entered
set hlsearch " highlight search matches

" fold settings, experimental
set foldenable " enable code folding
set foldlevelstart=10 " open quite a few folds by default
set foldnestmax=10 " max level of folds, raise if editing JS :P
set foldmethod=indent " fold code based on indentation

" backspace fixes
set backspace=indent,eol,start

" syntax settings
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino
filetype plugin on

" filetype specific settings
" Make YAML files use 2 space tabs, since actual tabs are disallowed
au FileType yaml set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Highlight any characters which go over the 80 char limit in red
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

" bindings
" closes folds
nnoremap <space> za
" up by visual line
nnoremap j gj
" down by visual line
nnoremap k gk
" move to beginning of line
nnoremap B ^
" move to the end of line
nnoremap E $
" highlight last inserted text
nnoremap gV `[v`]
" leader set to comma
let mapleader=","
" change from escape to jk to exit 
inoremap jk <esc>
" add some tab switching keys
" CTRL-Tab is next tab
noremap <C-Tab> :<C-U>tabnext<CR>
inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
cnoremap <C-Tab> <C-C>:tabnext<CR>
" CTRL-SHIFT-Tab is previous tab
noremap <C-S-Tab> :<C-U>tabprevious<CR>
inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
cnoremap <C-S-Tab> <C-C>:tabprevious<CR>
" toggle graphical undo tree
nnoremap <leader>u :GundoToggle<CR>
" save current VIM session, restart with vim -S
nnoremap <leader>s :mksession<CR>
" start the silver searcher
nnoremap <leader>a :Ag
