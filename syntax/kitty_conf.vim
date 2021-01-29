if exists('b:current_syntax')
    finish
endif

syntax case match

syntax match kittyConfString /.\+$/ contains=@NoSpell
syntax match kittyConfComment /^#.*/
syntax match kittyConfColor /#[[:alnum:]]\+$/ contains=@NoSpell
syntax match kittyConfIdentifier /^[[:alnum:]_]\+/ contains=@NoSpell

highlight default link kittyConfComment Comment
highlight default link kittyConfIdentifier Identifier
highlight default link kittyConfString String
highlight default link kittyConfColor Constant

let b:current_syntax = 'kitty_conf'
