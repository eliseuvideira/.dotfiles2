"
"                      █
"           ▐▌   ▐▌    ▀
"▗▟██▖ ▟█▙ ▐███ ▐███  ██  ▐▙██▖ ▟█▟▌▗▟██▖
"▐▙▄▖▘▐▙▄▟▌ ▐▌   ▐▌    █  ▐▛ ▐▌▐▛ ▜▌▐▙▄▖▘
" ▀▀█▖▐▛▀▀▘ ▐▌   ▐▌    █  ▐▌ ▐▌▐▌ ▐▌ ▀▀█▖
"▐▄▄▟▌▝█▄▄▌ ▐▙▄  ▐▙▄ ▗▄█▄▖▐▌ ▐▌▝█▄█▌▐▄▄▟▌
" ▀▀▀  ▝▀▀   ▀▀   ▀▀ ▝▀▀▀▘▝▘ ▝▘ ▞▀▐▌ ▀▀▀
"                               ▜█▛▘
"

" ｔａｂｓｉｚｅ
set expandtab tabstop=2 shiftwidth=2

" ｌｉｎｅ  ｎｕｍｂｅｒｓ
set number relativenumber

"
"                      █
"                      ▀
"▐█▙█▖ ▟██▖▐▙█▙ ▐▙█▙  ██  ▐▙██▖ ▟█▟▌▗▟██▖
"▐▌█▐▌ ▘▄▟▌▐▛ ▜▌▐▛ ▜▌  █  ▐▛ ▐▌▐▛ ▜▌▐▙▄▖▘
"▐▌█▐▌▗█▀▜▌▐▌ ▐▌▐▌ ▐▌  █  ▐▌ ▐▌▐▌ ▐▌ ▀▀█▖
"▐▌█▐▌▐▙▄█▌▐█▄█▘▐█▄█▘▗▄█▄▖▐▌ ▐▌▝█▄█▌▐▄▄▟▌
"▝▘▀▝▘ ▀▀▝▘▐▌▀▘ ▐▌▀▘ ▝▀▀▀▘▝▘ ▝▘ ▞▀▐▌ ▀▀▀
"          ▐▌   ▐▌              ▜█▛▘
"

" ｃｔｒｌ＋ｓ  ｔｏ  ｓａｖｅ
nmap <c-s> :w<CR>

" ｃｔｒｌ＋ｈｊｋｌ  ｔｏ  ｎａｖｉｇａｔｅ
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Ｓ  ｔｏ  ｒｅｐｌａｃｅ  ａｌｌ
nnoremap S :%s//g<Left><Left>

" ｓｓ  ｔｏ  ｒｅｐｌａｃｅ  ｌｉｎｅ
nnoremap s <noop>
nnoremap ss S

"
"  ▄▄                       █
" ▐▛▀                 ▐▌    ▀
"▐███ ▐▌ ▐▌▐▙██▖ ▟██▖▐███  ██   ▟█▙ ▐▙██▖▗▟██▖
" ▐▌  ▐▌ ▐▌▐▛ ▐▌▐▛  ▘ ▐▌    █  ▐▛ ▜▌▐▛ ▐▌▐▙▄▖▘
" ▐▌  ▐▌ ▐▌▐▌ ▐▌▐▌    ▐▌    █  ▐▌ ▐▌▐▌ ▐▌ ▀▀█▖
" ▐▌  ▐▙▄█▌▐▌ ▐▌▝█▄▄▌ ▐▙▄ ▗▄█▄▖▝█▄█▘▐▌ ▐▌▐▄▄▟▌
" ▝▘   ▀▀▝▘▝▘ ▝▘ ▝▀▀   ▀▀ ▝▀▀▀▘ ▝▀▘ ▝▘ ▝▘ ▀▀▀
"
"

function TrimTrailingWhiteSpace()
  %s/\s\+$//e
  call setpos('.', getpos("''"))
endfunction

function TrimTrailingNewLine()
  %s/\n\+\%$//e
endfunction

"
"                                 ▗▖
"           ▐▌                    ▐▌
" ▟██▖▐▌ ▐▌▐███  ▟█▙  ▟██▖▐█▙█▖ ▟█▟▌
" ▘▄▟▌▐▌ ▐▌ ▐▌  ▐▛ ▜▌▐▛  ▘▐▌█▐▌▐▛ ▜▌
"▗█▀▜▌▐▌ ▐▌ ▐▌  ▐▌ ▐▌▐▌   ▐▌█▐▌▐▌ ▐▌
"▐▙▄█▌▐▙▄█▌ ▐▙▄ ▝█▄█▘▝█▄▄▌▐▌█▐▌▝█▄█▌
" ▀▀▝▘ ▀▀▝▘  ▀▀  ▝▀▘  ▝▀▀ ▝▘▀▝▘ ▝▀▝▘
"

" ＴｒｉｍＴｒａｉｌｅｒＷｈｉｔｅＳｐａｃｅ  ｏｎ  ｓａｖｅ
autocmd BufWritePre * :call TrimTrailingWhiteSpace()

" ＴｒａｉｍＴｒａｉｌｉｎｇＮｅｗＬｉｎｅ  ｏｎ  ｓａｖｅ
autocmd BufWritePre * :call TrimTrailingNewLine()
