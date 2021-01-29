if exists('b:current_syntax')
    finish
endif

syntax case match

syntax match kittyConfComment /#.*/
syntax match kittyConfIdentifier /^[[:alnum:]_]\+/

highlight default link kittyConfComment Comment
highlight default link kittyConfIdentifier Identifier

let b:current_syntax = 'kitty_conf'
