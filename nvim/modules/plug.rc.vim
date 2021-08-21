
call plug#begin('~/.config/nvim/plugged')
""" fern
    Plug 'lambdalisue/fern.vim'
    Plug 'lambdalisue/fern-renderer-devicons.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'lambdalisue/fern-renderer-nerdfont.vim'
    Plug 'lambdalisue/nerdfont.vim'
    Plug 'lambdalisue/glyph-palette.vim'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    
    if has('nvim')
        Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/defx.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif

    Plug 'antoinemadec/FixCursorHold.nvim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

""" colorscheme
    Plug 'altercation/vim-colors-solarized'
    Plug 'Rigellute/shades-of-purple.vim'
call plug#end()
