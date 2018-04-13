if !has('conceal')
  finish
endif

" syntax match xjavaScriptFunction "\<function\>" conceal cchar=𝑓
" syntax match javaScriptNice "\<app\.use\>" conceal cchar=
syntax match javaScriptOperador "=>" conceal cchar=
syntax match javaScriptOperador "===" conceal cchar=≡

highlight Conceal guifg=LightYellow
" hi! link Conceal Operator

set conceallevel=2
