set rnu
set noshowmode
set showcmd
set nolist
set wrap
set linebreak
set ruler
set clipboard=unnamed
set cursorline
set noswapfile

" search
set hlsearch
set incsearch
set ignorecase

" tab and space
set softtabstop=2
set shiftwidth=2
set expandtab

" tab
set showtabline=2
set splitbelow
set splitright

" colour
syntax on
colorscheme default

" filetype
filetype on
filetype indent on
filetype plugin on

autocmd BufWritePre * :%s/\s\+$//e
autocmd WinEnter * setlocal cursorline

" F5 run code
if executable("node")
  autocmd BufRead,BufNewFile *.js noremap <F5> :% w !node<Enter>
else
  autocmd BufRead,BufNewFile *.js noremap <F5> :echo "you need to install node first!"
endif

if executable("python")
  autocmd BufRead,BufNewFile *.py noremap <F5> :% w !python<Enter>
else
  autocmd BufRead,BufNewFile *.py noremap <F5> :echo "you need to install python first!"
endif

" vim plugins
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'

Plug 'kien/ctrlp.vim'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

" Plug 'vim-scripts/tComment'
Plug 'tomtom/tcomment_vim'

Plug 'thoughtbot/vim-rspec'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'preservim/tagbar'

call plug#end()
