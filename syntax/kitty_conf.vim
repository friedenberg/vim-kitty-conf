if exists('b:current_syntax')
    finish
endif

syntax case match

syntax match kittyConfComment /^#.*/
syntax match kittyConfIdentifier /^[[:alnum:]_]\+/
syntax match kittyConfString /[[:alnum:]_\s]\+$/
syntax match kittyConfColor /#[[:alnum:]]\+$/

highlight default link kittyConfComment Comment
highlight default link kittyConfIdentifier Identifier
highlight default link kittyConfString String
highlight default link kittyConfColor Constant

let b:current_syntax = 'kitty_conf'
