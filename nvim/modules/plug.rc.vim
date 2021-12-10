
call plug#begin('~/.config/nvim/plugged')

""" fern
    Plug 'lambdalisue/fern.vim'
    Plug 'lambdalisue/fern-renderer-devicons.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'lambdalisue/fern-renderer-nerdfont.vim'
    Plug 'lambdalisue/nerdfont.vim'
    Plug 'lambdalisue/glyph-palette.vim'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'lambdalisue/fern-git-status.vim'

""" defx filer
"    if has('nvim')
"        Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
"    else
"        Plug 'Shougo/defx.nvim'
"        Plug 'roxma/nvim-yarp'
"        Plug 'roxma/vim-hug-neovim-rpc'
"    endif

""" git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'

""" fzf
"    Plug 'antoinemadec/FixCursorHold.nvim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

""" ctrlP
"    Plug 'ctrlpvim/ctrlp.vim'
"    Plug 'mattn/ctrlp-matchfuzzy'

""" fuzzy
"    Plug 'mattn/vim-fz'

""" .editorconfig
    Plug 'editorconfig/editorconfig-vim'

""" airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

""" coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
"     Plug 'yaegassy/coc-blade-formatter', {'do': 'yarn install --frozen-lockfile'}
    Plug 'yaegassy/coc-blade', {'do': 'yarn install --frozen-lockfile'}

""" colorscheme
    " Plug 'altercation/vim-colors-solarized'
    " Plug 'Rigellute/shades-of-purple.vim'
    Plug 'cocopon/iceberg.vim'

""" athers
    Plug 'jiangmiao/auto-pairs'

""" snipet
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

""" lang pack
    Plug 'sheerun/vim-polyglot'

""" languages
    Plug 'StanAngeloff/php.vim'
    Plug 'elzr/vim-json'
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'rust-lang/rust.vim'
"    Plug 'leafgarland/typescript-vim'

""" template
    Plug 'mattn/vim-sonictemplate'

call plug#end()

