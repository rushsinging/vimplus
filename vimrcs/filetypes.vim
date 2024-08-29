""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

" For pythoner
au FileType python map <F5> :!python %<cr>
au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i importk
au FileType python inoremap <buffer> $p print()<left>


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
" au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent
au FileType javascript setl shiftwidth=2

"au FileType javascript imap <c-t> AJS.log();<esc>hi
"au FileType javascript imap <c-a> alert();<esc>hi

"au FileType javascript inoremap <buffer> $r return 
"au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction


""""""""""""""""""""""""""""""
" => Yaml section
"""""""""""""""""""""""""""""""
au FileType yaml setl shiftwidth=2


""""""""""""""""""""""""""""""
" => CoffeeScript section
"""""""""""""""""""""""""""""""
function! CoffeeScriptFold()
    setl foldmethod=indent
    setl foldlevelstart=1
endfunction
au FileType coffee call CoffeeScriptFold()



""""""""""""""""""""""""""""""
" => Golang section
"""""""""""""""""""""""""""""""
" autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
