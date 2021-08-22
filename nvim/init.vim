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
"noremap <Space>nt :tabnew<CR>:Defx<CR>
noremap <Space>nt :tabnew<CR>:Fern . -reveal=% -drawer<CR>

" tab 移動
noremap <Tab> :tabnext<CR>
"noremap <S-Tab> :tabprev<CR>
noremap <S-Tab> :tabclose<CR>

" buffer の移動
noremap <Space>' :bnext<CR>
noremap <Space>; :bprev<CR>
" buffer 削除
noremap <Space>dd :bdelete<CR>

" ＜追加＞分割画面移動
"noremap <silent><C-h> <C-w>h                                    
"noremap <silent><C-j> <C-w>j
"noremap <silent><C-k> <C-w>k
"noremap <silent><C-l> <C-w>l

" vs 画面分割
noremap <C-w>- :vs<CR>
"noremap ss :split<CR><C-w>w
noremap <Space>vv :vsplit<CR><C-w><CR>
" vsplit move
noremap ;; <C-w>w

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


""""""""""""""""""""""""""""""""""""""""""
" vim-plug 
" :PlugInstall 
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/modules/plug.rc.vim'))
  source ~/.config/nvim/modules/plug.rc.vim
endif
""""""""""""""""""""""""""""""""""""""""""
" end vim-plug 
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" dein pack load 
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/plugins/dein_load.vim---'))
  source ~/.config/nvim/plugins/dein_load.vim
endif
""""""""""""""""""""""""""""""""""""""""""
"" dein end
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" color scheme
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/modules/color_scheme.vim'))
  source ~/.config/nvim/modules/color_scheme.vim
endif
""""""""""""""""""""""""""""""""""""""""""
" color scheme end 
""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""
" vim air line 
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/plugins/air_line.vim'))
  source ~/.config/nvim/plugins/air_line.vim
endif
""""""""""""""""""""""""""""""""""""""""""
" vim air line end 
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
" active window color clear
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/modules/color_conf.vim---'))
  source ~/.config/nvim/modules/color_conf.vim
endif
""""""""""""""""""""""""""""""""""""""""""
" active window color clear
""""""""""""""""""""""""""""""""""""""""""


"hi airline_tabfill ctermfg=49 ctermbg=100
"hi airline_tabsel ctermfg=49 ctermbg=100
"autocmd ColorScheme * highlight airline_tabsel ctermfg=49 ctermbg=100 guifg=#f0A09 guibg=#A0A00


""""""""""""""""""""""""""""""""""""""""""
" defx key bind
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/plugins/defx.vim'))
  source ~/.config/nvim/plugins/defx.vim
endif
""""""""""""""""""""""""""""""""""""""""""
" defx vim end 
""""""""""""""""""""""""""""""""""""""""""

" set runtimepath+=/usr/local/bin/fzf

""""""""""""""""""""""""""""""""""""""""""
" fzf vim 
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/plugins/fzf.vim'))
  source ~/.config/nvim/plugins/fzf.vim
endif
""""""""""""""""""""""""""""""""""""""""""
" fzf vim end
""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""
" Fern vim 
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/plugins/fern.vim'))
  source ~/.config/nvim/plugins/fern.vim
endif
""""""""""""""""""""""""""""""""""""""""""
" Fern vim end
""""""""""""""""""""""""""""""""""""""""""


" indent 
"inoremap {<Enter> {}<Left><CR><ESC><S-o>
"inoremap [<Enter> []<Left><CR><ESC><S-o>
"inoremap (<Enter> ()<Left><CR><ESC><S-o>



" let g:AutoClosePairs = "() {} \""
" let g:AutoClosePairs_add = "<> |"


""""""""""""""""""""""""""""""""""""""""""
" highlight 情報取得関数
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/plugins/SyntaxInfo.vim'))
  source ~/.config/nvim/plugins/SyntaxInfo.vim
endif
""""""""""""""""""""""""""""""""""""""
" highlight end 
""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""
"coc vim
""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.config/nvim/plugins/coc---.vim'))
  source ~/.config/nvim/plugins/coc.vim
endif
""""""""""""""""""""""""""""""""""""""""""
"coc vim end
""""""""""""""""""""""""""""""""""""""""""


" you can add these colors to your .vimrc to help customizing
"let s:brown = "905532"
"let s:aqua =  "3AFFDB"
"let s:blue = "AE403F"
"let s:blue = "689FB6"
"let s:darkBlue = "44788E"
"let s:purple = "834F79"
"let s:lightPurple = "834F79"
"let s:red = "AE403F"
""let s:beige = "F5C06F"
"let s:yellow = "F09F17"
"let s:orange = "D4843E"
"let s:darkOrange = "F16529"
"let s:pink = "CB6F6F"
"let s:salmon = "EE6E73"
"let s:green = "8FAA54"
"let s:lightGreen = "31B53E"
"let s:white = "31B53E"
" let s:white = "FFFFFF"
"let s:rspec_red = 'FE405F'
"let s:git_orange = 'F54D27'

"let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

"let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

"let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

"let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
"let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule


"highlight CocErrorSign ctermfg=15 ctermbg=196
"highlight CocWarningSign ctermfg=0 ctermbg=172

