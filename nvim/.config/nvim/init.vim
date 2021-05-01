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

" ｌｅａｄｅｒ
let mapleader=" "

" ｔａｂｓｉｚｅ
set expandtab tabstop=2 shiftwidth=2

" ｌｉｎｅ  ｎｕｍｂｅｒｓ
set number relativenumber

"
"      ▗▄▖              █
"      ▝▜▌              ▀
" ▐▙█▙  ▐▌  ▐▌ ▐▌ ▟█▟▌ ██  ▐▙██▖▗▟██▖
" ▐▛ ▜▌ ▐▌  ▐▌ ▐▌▐▛ ▜▌  █  ▐▛ ▐▌▐▙▄▖▘
" ▐▌ ▐▌ ▐▌  ▐▌ ▐▌▐▌ ▐▌  █  ▐▌ ▐▌ ▀▀█▖
" ▐█▄█▘ ▐▙▄ ▐▙▄█▌▝█▄█▌▗▄█▄▖▐▌ ▐▌▐▄▄▟▌
" ▐▌▀▘   ▀▀  ▀▀▝▘ ▞▀▐▌▝▀▀▀▘▝▘ ▝▘ ▀▀▀
" ▐▌              ▜█▛▘
"

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tomasiser/vim-code-dark'

call plug#end()

" ｄｉｓｐｌａｙ  ｈｉｄｄｅｎ  ｆｉｌｅｓ
let g:NERDTreeShowHidden=1

" ｖｓｃｏｄｅ  ｔｈｅｍｅ
colorscheme codedark

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

nnoremap <Leader>f :NERDTreeToggle<Enter>

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
