" let g:fern#renderer = "devicons"

nnoremap <Space>ff :Fern . -reveal=% -drawer -width=34 -toggle<CR>
nnoremap <Space>fe :Fern ~ -reveal=% -drawer -width=34 -toggle<CR>

let g:fern#default_hidden=1
let g:fern#renderer = "nerdfont"

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree call glyph_palette#apply()
  autocmd FileType startify call glyph_palette#apply()
"  let g:glyph_palette#palette = copy(g:glyph_palette#defaults#palette)
"	let g:glyph_palette#palette['GlyphPalette1'] += ['']
augroup END
" let g:defx_icons_gui_colors = {
" \ 'red': 'FFFFFF',
" \ 'blue': 'FFAFFF',
" \ 'yellow': 'FFFFFF',
" \ }
  "let g:glyph_palette#palette = copy(g:glyph_palette#defaults#palette)

"function! s:on_highlight() abort
 " Use brighter highlight on root node
"  highlight link FernRootSymbol Title
"  highlight link FernRootText   Title
"endfunction

"augroup my-fern-highlight
"  autocmd!
"  autocmd User FernHighlight call s:on_highlight()
"augroup END
"nmap <Space>pp
"     \ <Plug>(my-new-file)
"     \ <Plug>(fern-action-new-file=)foo<CR>
