" http://candidtim.github.io/vim/2017/08/11/write-vim-plugin-in-python.html
" http://www.terminally-incoherent.com/blog/2013/05/06/vriting-vim-plugins-in-python/
if !has('python3')
  finish
endif


" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" https://github.com/jonathanslenders/python-prompt-toolkit
"
" https://github.com/khzaw/vim-conceal
" https://github.com/ehamberg/vim-cute-python
" https://github.com/tyok/js-mask/blob/master/after/syntax/javascript.vim
" remove the keywords. we'll re-add them below

syntax clear javaScriptFunction
" syntax match javaScriptFunction /\<function\>/ nextgroup=javaScriptFuncName skipwhite conceal cchar=𝑓
syntax match javaScriptFunction /\<function\>/ conceal cchar=𝑓
" syntax match javaScriptFunctionNoParams /function()/ conceal cchar=𝑓

" hi link javaScriptFunctionNoParams javaScriptFunction
" hi! link Conceal javaScriptFunction

set conceallevel=1

function! HelloWorld()
pyfile demo.py
" echo "Hola mundo"
" python3 << EOF
" print("Hello from Vim's Python!")
" EOF
endfunc

" https://dzone.com/articles/how-write-vim-plugins-python
command! -nargs=0 HelloWorld call HelloWorld()
