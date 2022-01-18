"Neovim runtime configuration settings to be initialized

"Basic configuration settings 
syntax enable
set guicursor=
set noerrorbells
set novisualbell
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent
set autoindent
set nu
set nowrap
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"VIM-PLUG Plugin Manager Configuration
"Execute in terminal:
"cd .config/nvim
"mkdir autoload
"cd autoload
"curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -o plug.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plugins installed via plugin manager 
call plug#begin('~/.config/nvim/plugged')
    
    "Automatic pairing for parentheses
    Plug 'jiangmiao/auto-pairs'

    "File system explorer
    Plug 'preservim/nerdtree'

    "Configurable theme for the statusline 
    Plug 'itchyny/lightline.vim'

    "Theme for Neovim
    Plug 'morhetz/gruvbox'

    "Git integration 
    Plug 'tpope/vim-fugitive'

    "Syntax highlighting for java
    Plug 'uiiaoo/java-syntax.vim'

    "Vertical lines at each indentation level
    Plug 'Yggdroot/indentLine'    

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Settings for NERDTree 
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\.localized']
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :PlugStatus<CR>

"Gruvbox theme initialization
autocmd vimenter * ++nested colorscheme gruvbox

"Settings for indentLine
nnoremap <C-g> :IndentLinesToggle<CR>
