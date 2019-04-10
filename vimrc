set nu
set nocompatible              " be iMproved, required
filetype off                  " required
" syntax on
set showmatch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


"set spell

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
map <F1> :NERDTreeToggle<CR>

" markdown plugin
" Plugin 'godlygeek/tabular'
"
" Plugin 'plasticboy/vim-markdown'

" Plugin 'Valloric/YouCompleteMe'



" ===========================================================
" vim powerline
Plugin 'Lokaltog/vim-powerline'
" let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim
set nocompatible
set t_Co=256
let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
	    autocmd!
	    au InsertEnter * set timeoutlen=0
	    au InsertEnter * set timeoutlen=1000
    augroup END
endif

set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
" end of power line
" ===========================================================

Bundle "myusuf3/numbers.vim"
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

Plugin 'kien/ctrlp.vim'

Plugin 'myhere/vim-nodejs-complete'

Plugin 'airblade/vim-gitgutter'

Plugin 'scrooloose/syntastic'

Plugin 'pangloss/vim-javascript'




" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'tpope/vim-fugitive'
set laststatus=2 " Always display the status line
set statusline+=%{fugitive#statusline()} "  Git Hotness

" plugin from http://vim-scripts.org/vim/scripts.html
"
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

