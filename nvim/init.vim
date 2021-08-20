" ------------------------------------------------------------
"  key bind
" ------------------------------------------------------------
" Normal Mode
cnoremap init :<C-u>edit $MYVIMRC<CR>
" init.vim呼び出し
noremap <Space>s :source $MYVIMRC<CR>
" init.vim読み込み
"noremap <Space>w :<C-u>w<CR>
noremap <Space>w :w<CR>
" ファイル保存
" ↓ 保存して終了
" noremap <Space>q :<C-u>q<CR>
noremap <Space>q :q<CR>
" tabnew 新しいタブの作成
noremap <Space>nt :tabnew<CR>:Defx<CR>
" buffer の移動
noremap <Space>' :bnext<CR>
noremap <Space>; :bprev<CR>
" buffer 削除
noremap <Space>dd :bdelete<CR>
" ＜追加＞分割画面移動
noremap <silent><C-h> <C-w>h                                    
noremap <silent><C-j> <C-w>j
noremap <silent><C-k> <C-w>k
noremap <silent><C-l> <C-w>l

" vs 画面分割
noremap <C-w>- :vs<CR>

noremap <Space>/ I//<Space><ESC>
" Insert Mode 
" inoremap <silent> jj <ESC>:<C-u>w<CR>:<C-c>
inoremap <silent> jj <ESC>:<C-u>w<CR>
inoremap <silent> っｊ <ESC>:<C-u>w<CR>
" InsertMode抜けて保存
" Insert mode movekey bind
inoremap <C-d> <Delete>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
"inoremap <C-k> <Up>                          
"inoremap <C-j> <Down>

" insertMode ctrl + a, e 先頭移動、末尾移動、（インデント無視で先頭まで）
inoremap <C-a> <ESC><S-i>
inoremap <C-e> <ESC><S-a>
" inoremap <C-a> <ESC>100h

" 補完
"inoremap <C->
" encode setting
"
"set encoding=utf-8
set encoding=UTF-8
" edita setting
set number                                                      " 行番号表示
set splitbelow                                                  " 水平分割時に下に表示
set splitright                                                  " 縦分割時を右に表示
set noequalalways                                               " 分割時に自動調整を無効化
set wildmenu                                                    " コマンドモードの補完
" cursorl setting
set ruler                                                       " カーソルの位置表示
set cursorline                                                  " カーソルハイライト
" tab setting
set expandtab                                                   " tabを複数のspaceに置き換え
set tabstop=2                                                   " tabは半角2文字
set shiftwidth=4                                                " tabの幅
" filetype indent on
set autoindent
set smartindent
"set ai
"set si

if &compatible    
  set nocompatible               " Be iMproved    
endif    


""""""""""""""""""""""""""""
" vim-plug """"""""""""""""""
" :PlugInstall """"""""""""""""""
call plug#begin('~/.config/nvim/plugged')
    Plug 'lambdalisue/fern.vim'
    Plug 'lambdalisue/fern-renderer-devicons.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'lambdalisue/fern-renderer-nerdfont.vim'
    Plug 'lambdalisue/nerdfont.vim'
    Plug 'lambdalisue/glyph-palette.vim'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    Plug 'antoinemadec/FixCursorHold.nvim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'altercation/vim-colors-solarized'
call plug#end()
" end vim-plug """"""""""""""""""
""""""""""""""""""""""""""""

" Pluginディレクトリのパス    
let s:dein_dir = expand('~/.vim/dein')    
" dein.vimのパス    
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'    
" tomlのディレクトリへのパス    
let s:toml_dir = expand('~/.config/nvim')    

" Required:    
execute 'set runtimepath^=' . s:dein_repo_dir    

" Required:    
if dein#load_state(s:dein_dir)    
  call dein#begin(s:dein_dir)    

  " 起動時に読み込むプラグイン群のtoml    
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  " 利用時に読み込むプラグインのtoml
  call dein#load_toml(s:toml_dir . '/lazy.toml', {'lazy': 1})

  " Required:               
  call dein#end()           
  call dein#save_state()    
endif                        

" call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev': 'master', 'build': 'yarn install --frozen-lockfile' })


" Required:                  
filetype plugin indent on                                   

" If you want to install not installed plugins on startup.    
if dein#check_install()                                       
  call dein#install()      
endif

" colorscheme hybrid
" colorscheme solarized
" colorscheme iceberg
" colorscheme shades_of_purple


"""" enable 24bit true color
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

""""""""""""""""""""color scheme""""""""""""""""""""
"""" enable the theme
syntax enable
"color
autocmd ColorScheme * highlight phpRegion guifg=#f0000
source ~/.config/nvim/myColorScheme.vim
"color
colorscheme shades_of_purple

" colorscheme solarized


let g:shades_of_purple_airline = 1
let g:airline_theme='shades_of_purple'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"let g:shades_of_purple_lightline = 1 let g:lightline = { 'colorscheme': 'shades_of_purple' }

" acrive window clear
augroup ChangeBackground
 autocmd!
 " autocmd WinEnter * highlight Normal guibg=default
 " autocmd WinEnter * highlight NormalNC guibg='#2D2B55'
 autocmd BufRead * highlight Normal guibg=default
" autocmd WinEnter * highlight NormalNC guibg='#27292d' #2D2B55 
augroup END

""""""""""""""""""""color scheme""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" defx key bind
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/plugins/defx.vim'))
  source ~/.config/nvim/plugins/defx.vim
endif
""""""""""""""""""""""""""""""""""""""""""
"" defx vim end """"""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""

" set runtimepath+=/usr/local/bin/fzf

""""""""""""""""""""""""""""""""""""""""""
"" fzf vim """"""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/plugins/fzf.vim'))
  source ~/.config/nvim/plugins/fzf.vim
endif
""""""""""""""""""""""""""""""""""""""""""
"" fzf vim end """"""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""
"" Fern vim """"""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/plugins/fern.vim'))
  source ~/.config/nvim/plugins/fern.vim
endif
""""""""""""""""""""""""""""""""""""""""""
"" Fern vim end """""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""

" indent 
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>


""""""""""""""""""""""""""""""""""""""
" highlight 情報取得関数
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/plugins/SyntaxInfo.vim'))
  source ~/.config/nvim/plugins/SyntaxInfo.vim
endif
""""""""""""""""""""""""""""""""""""""
" highlight end 
""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""
"coc vim
""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/plugins/coc.vim'))
  source ~/.config/nvim/plugins/coc.vim
endif
""""""""""""""""""""""""""""""""""""""
"coc vim end
""""""""""""""""""""""""""""""""""""""

" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
"let s:blue = "AE403F"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "31B53E"
" let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

