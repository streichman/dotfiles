let g:python_host_prog="~/.pyenv/versions/p2neovim/bin/python2"
let g:python3_host_prog="~/.pyenv/versions/p3neovim2/bin/python"
let g:powerline_pycmd="py3"
call plug#begin('~/.config/nvim/plugged')
" Vim color schemes
 Plug 'flazz/vim-colorschemes'
" Visual Studio colorscheme
 Plug 'tomasiser/vim-code-dark'

" Synthetic colorscheme
 Plug 'semibran/vim-colors-synthetic'

" Make sure you use single quotes
 Plug 'junegunn/seoul256.vim'
 Plug 'junegunn/vim-easy-align'

" Syntastic
 Plug 'scrooloose/syntastic'

" Group dependencies, vim-snippets depends on ultisnips
 Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
 Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
 Plug '~/my-prototype-plugin'

" Vim Surround (Brackets & quotes closer)
 Plug 'tpope/vim-surround'

" Code Autocompletion
 Plug 'valloric/youcompleteme'

" Html Plugins
 Plug 'alvan/vim-closetag' "Auto Close HTML Tags
 Plug 'othree/xml.vim' "XML Plugin for tag renaming, etc

" CSS Plugins
 Plug 'othree/csscomplete.vim'

" Vim Node Support
 Plug 'moll/vim-node'

 Plug 'leafgarland/typescript-vim'
" Powerline alt for nvim
 Plug 'powerline/powerline'

" Fuzzy Finder fzf
 Plug '~/.fzf/'
 Plug 'junegunn/fzf.vim'

" Rust Language
 Plug 'rust-lang/rust.vim'

" Rust code completion
 Plug 'racer-rust/vim-racer'

" Neomake Async Program Run
 Plug 'neomake/neomake'
" Deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()
autocmd FileType css setlocal omifunc=csscomplete#CompleteCSS noci
autocmd FileType scss set iskeyword+=-
let g:airline_powerline_fonts = 1
" Custom Keybinds
let mapleader = "\\"
map <C-m> :NERDTree<CR>
map <leader>m :NERDTree<CR>
let g:airline_theme='deus'
"let g:codedark_conservative=1
"colorscheme monokain
"colorscheme codedark
colorscheme astronaut
let g:rustfmt_autosave=1
let g:racer_cmd="~/.cargo/bin/racer"
let g:racer_experimental_completer=1
let g:ycm_show_diagnostics_ui=0
"set mouse=a
hi Normal guibg=NONE ctermbg=NONE
