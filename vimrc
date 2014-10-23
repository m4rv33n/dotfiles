
" ###
" General options
" ###
set nocompatible " be iMproved
set autoread " Reload if changed on disk
set backspace=indent,eol,start " Make backspace work everywhere
set backupcopy=yes " Preserve Attributes of original file
set backupdir=~/.vim/backup " See previous option
set backupskip=/tmp/* " No Backup for /tmp
set completeopt=longest,menuone " Only insert the longest common text of the matches. Show a menu even if there is just one
set directory=~/.vim/swap,~/tmp,. " Keep swap files in home
set history=50 " : History
set hlsearch " Highlight search terms
set ignorecase " Case insensitive search
set incsearch " Search as you type
set laststatus=2 " Always display status bar
set number " Line numbers
set ruler " Display position in file in status bar
set scrolloff=5 " Keep cursor 5 lines away from the screen border
set shiftwidth=4 " 4 spaces = 1 tab
set showcmd " Show what you are doing
set showmatch " Show matching bracket
set showmode " Show wether in insert mode
set smartcase " If search pattern contains a uppercase letter, case sensitivity is on
set smarttab " Be cool when inserting tabs
set title " Change shell title
set wildmenu " Command line completion
set wildmode=list:longest,full " Show everything
set encoding=utf-8 " Encoding
set termencoding=utf-8 " Terminal Encoding
set mouse=a " Enable mouse support (full)
set winminheight=0 " Windows can have no height
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap, too
set list " Show whitespaces
set listchars=tab:>-,eol:¶,trail:~ " Show these whitespaces
set virtualedit=onemore " Allow the cursor past the end of line
set splitright " Put a new window to the right
set splitbelow " Put a new window below
set nowrap " No line wrapping
set autoindent " Indent as prevous line
set noexpandtab " Do not expand tabs to spaces
set tabstop=4 " Indentation every 4 columns
set softtabstop=4 " Let backspace delete indent
set linespace=0 " No space between the characters
set shiftwidth=4 " Indent with 4 spaces
set clipboard=unnamed " Default clipboard
set t_Co=256 " Wow! Much color!


" ###
" Vundle
" ###
"
filetype off
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'tomasr/molokai'
Bundle 'Keithbsmiley/tmux.vim'
call vundle#end()
filetype plugin indent on

" ###
" Variables
" ###
let maplocalleader=","
let mapleader=","
let g:molokai_original=1

" ###
" Keymappings
" ###
map <LocalLeader>t <Esc>:tabnew<CR>
set pastetoggle=<F12> " Sane indentation on pastes with F12

" ###
" Folding
" ###
if has ('folding')
	set foldenable " Enable folding
	set foldmethod=indent " Indentation to specify folds
	set foldcolumn=1 " Show a column with fold info
	set foldlevelstart=99 " No folding by default
	" Use F9 for folding:
	inoremap <F9> <C-O>za
	nnoremap <F9> za
	onoremap <F9> <C-C>za
	vnoremap <F9> zf
endif

" ###
" Visual things
" ###
syntax enable
highlight clear LinNr
colorscheme molokai

