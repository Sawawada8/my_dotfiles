" call dein#add('junegunn/fzf.vim')
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
let $FZF_DEFAULT_OPTS .= ' --inline-info'

"command! -bang -nargs=* GGrep
  "\ call fzf#vim#grep(
  "\   'git grep --line-number -- '.shellescape(<q-args>), 0,
  "\   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

" All files
command! -nargs=? -complete=dir AF
  \ call fzf#run(fzf#wrap(fzf#vim#with_preview({
  \   'source': 'fd --type f --hidden --follow --exclude .git --no-ignore . '.expand(<q-args>)
  \ })))
let $FZF_DEFAULT_OPTS="--layout=reverse"
let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"
" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" noremap <Space>p fzf#vimfiles()
" fzf settings 
" windowサイズ、ボーダースタイルなど指定できる
" let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }

let mapleader = "\<Space>"

" fzf
nnoremap <silent> <Space>F :Files ~<CR>
" nnoremap <silent> <Space>f :FZF .<CR>
nnoremap <silent> <leader>fz :FZF<CR>
nnoremap <silent> ,f :FZF<CR>
nnoremap <silent> <Space>p :FZF<CR>
nnoremap <silent> <Space>g :GFiles<CR>
nnoremap <silent> <Space>G :GFiles?<CR>
nnoremap <silent> <Space>fb :Buffers<CR>
nnoremap <silent> <Space>fh :History<CR>
nnoremap <silent> <Space>fr :Rg<CR>

