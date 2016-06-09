" Must come first because it changes other options.
set nocompatible

" Vundle setup
filetype off " required by Vundle 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" My bundles from GitHub
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-rails'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-markdown'
Plugin 'klen/python-mode'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'fatih/vim-go'
Plugin 't9md/vim-chef'
Plugin 'chase/vim-ansible-yaml'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'zenorocha/dracula-theme'

filetype plugin indent on " required by Vundle 

" Other configurations...

" Enable syntax highlighting
syntax on

" Load the matchit plugin.
runtime macros/matchit.vim

" Display incomplete commands.
set showcmd
" Display the mode you're in.
set showmode

" Intuitive backspacing.
set backspace=indent,eol,start
" Handle multiple buffers better.
set hidden

" Enhanced command line completion.
set wildmenu
" Complete files like a shell.
set wildmode=list:longest

" Case-insensitive searching.
set ignorecase
" But case-sensitive if expression contains a capital letter.
set smartcase

" Show line numbers.
set number
" Show cursor position.
set ruler

" Highlight matches as you type.
set incsearch
" Don't highlight matches.
set nohlsearch

" Turn off line wrapping.
set nowrap    
" Show 3 lines of context around the cursor.
set scrolloff=3

" Set the terminal's title
set title
" No beeping.
set visualbell

" Don't make a backup before overwriting a file.
set nobackup
" And again.
set nowritebackup
" Keep swap files in one location
set directory=$HOME/.vim/tmp//,.

" Global tab width.
set tabstop=4
" And again, related.
set shiftwidth=4
" Specific shiftwidth for ruby files
autocmd FileType ruby set shiftwidth=2
" But not for erb files...
autocmd FileType eruby set shiftwidth=4

" Show the status line all the time
set laststatus=2
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Leader = ,
let mapleader = ","

" Tab mappings.
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>e :tabedit
nnoremap <leader>c :tabclose<cr>
nnoremap <leader>o :tabonly<cr>
nnoremap <leader>f :tabfirst<cr>
nnoremap <leader>l :tablast<cr>
nnoremap <leader>n :tabnext<cr>
nnoremap <leader>p :tabprevious<cr>
nnoremap <leader>f :tabfirst<cr>
nnoremap <leader>l :tablast<cr>

" Fugitive mappings
" (thanks to Steve Losh's vimrc)
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gci :Gcommit<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gm :Gmove
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>grm :Gremove<cr>
nnoremap <leader>gp :Git push

" Edit and load vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Toggles hlsearch
nnoremap <leader>hs :set hlsearch!<cr>

" Toggles NERDtree
map <C-n> :NERDTreeToggle<CR>

" Maps <C-C> to <esc>
noremap <C-C> <esc>

" Go to start of line with H and to the end with $
nnoremap L $
nnoremap H ^

" Go to start/end of line while using operators.
onoremap L $
onoremap H ^

" Go to start/end of line while using operators.
vnoremap L $
vnoremap H ^

" Scroll without moving cursor with C-J and C-K
nnoremap <C-J> <C-e>
nnoremap <C-K> <C-y>

" Powerline options
let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 1

" CtrlP - works not only in ancestor directories of my working directory.
let g:ctrlp_working_path_mode = 'a'
" Custom ignores
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|class'

" Yankring default mapping conflicts with CtrlP
let g:yankring_replace_n_pkey = '<C-M>'

" Brings Ack on Ctrl+F
noremap <C-F> :Ack!<space>

" Remaps textobj-rubyblock's bindings to vim's defaults
autocmd FileType ruby map aB ar
autocmd FileType ruby map iB ir

" Sets markdown syntax for *.md files.
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Sets javascript syntax for *.json files.
autocmd BufRead,BufNewFile *.json set filetype=javascript
"
" Sets html syntax for *.ejs files.
autocmd BufRead,BufNewFile *.ejs set filetype=html

" Wrap markdown files.
autocmd BufRead,BufNewFile *.md set wrap

" Files open expanded
set foldlevelstart=20

" Toggles folding with space
nnoremap <Space> za

" Toggle relative/absolute line counting
let g:NumberToggleTrigger="<C-l>"

" Populate the g:airline_symbols dictionary
let g:airline_powerline_fonts = 1

set t_Co=256
