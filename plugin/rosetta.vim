command! RosettaTranslateComment call rosetta#translate_comment()
nnoremap <silent> <plug>(rosetta-translate-comment) :<C-u>call rosetta#translate_comment()<CR>
if !hasmapto('<plug>(rosetta-translate-comment)')
  nmap <Leader>rt <plug>(rosetta-translate-comment)
endif

if get(g:, 'rosetta_translate_comment_auto', 0)
  augroup RosettaTranslateComment
    autocmd!
    autocmd CursorHold,CursorHoldI * call rosetta#translate_comment_auto()
  augroup END
endif

if get(g:, 'rosetta_translate_comment_auto', 0)
  augroup RosettaTranslateComment
    autocmd!
    autocmd CursorHold,CursorHoldI * call rosetta#translate_comment_auto()
  augroup END
endi

inoremap <silent> <plug>(rosetta-complete-name) <c-r>=rosetta#complete_name()<cr>
if !hasmapto('<plug>(rosetta-complete-name)')
  imap <c-x><c-t> <plug>(rosetta-complete-name)
endif
