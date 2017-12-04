" ============= Start Vundle Config ============

"You need to download and install Vundle:
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

filetype off                   "Disable file type for Vundle (required)

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle (required)
Plugin 'gmarik/Vundle.vim'


" ================== Plugins ===================

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'sotte/presenting.vim'
       "Write presentation using separators Markdown (# heading),
       "RST (~~~~), Orgmode (#----), GoLang slide (* title)
       "To start presenting, execute :PresentingStart
       "n = nest slide, p = previous slide, q = quit

call vundle#end()


" ============== NERDTree Config ===============

"Close VIM if only window open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" =============== General Config ===============

set number                     "Line numbers are good
set path+=**                   "Search into sub-folders, provide tab-completion for all file tasks
set wildmenu                   "Display all matching files when we tab complete
set backspace=indent,eol,start "Allow backspace in insert mode
set showmode                   "Show current mode at bottom
set showcmd                    "Show command in bottom bar
set wildmenu                   "Visual autocomplete for command menu
set tabstop=4                  "Number of visual spaces per TAB
set softtabstop=4              "Number of spaces in TAB when editing
set expandtab                  "TABs are spaces
set ruler                      "Always show current position
set hlsearch                   "Highlight search results
set ai                         "Auto indent
set si                         "Smart indent
set wrap                       "Wrap lines
set encoding=utf8              "Set encoding for UTF8
set laststatus=2               "Needed for vim-airline
set ttimeoutlen=50             "Needed for vim-airline
set background=dark            "Set backgound to dark

colorscheme elflord

syntax on                      "Turn on syntax highlighting


" ============== Key (re)Mappings ==============

let mapleader = ","            "Set leader characher to ','

"Set ctrl-n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

"Set ';' to do same thing as ':'
nnoremap ; :
