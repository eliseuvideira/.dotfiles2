"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""
"               __  __  _                  "
"    ________  / /_/ /_(_)___  ____ ______ "
"   / ___/ _ \/ __/ __/ / __ \/ __ `/ ___/ "
"  (__  )  __/ /_/ /_/ / / / / /_/ (__  )  "
" /____/\___/\__/\__/_/_/ /_/\__, /____/   "
"                           /____/         "
""""""""""""""""""""""""""""""""""""""""""""
" tabsize
set expandtab tabstop=2 shiftwidth=2

" line numbers
set number relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                _                  "
"   ____ ___  ____ _____  ____  (_)___  ____ ______ "
"  / __ `__ \/ __ `/ __ \/ __ \/ / __ \/ __ `/ ___/ "
" / / / / / / /_/ / /_/ / /_/ / / / / / /_/ (__  )  "
"/_/ /_/ /_/\__,_/ .___/ .___/_/_/ /_/\__, /____/   "
"               /_/   /_/            /____/         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" save on ctrl+s
nmap <c-s> :w<CR>

" navigate on ctrl+h/j/k/l
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" replace all on S
nnoremap S :%s//g<Left><Left>

" replace line on ss
nnoremap s <noop>
nnoremap ss S

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
"    ____                 __  _                  "
"   / __/_  ______  _____/ /_(_)___  ____  _____ "
"  / /_/ / / / __ \/ ___/ __/ / __ \/ __ \/ ___/ "
" / __/ /_/ / / / / /__/ /_/ / /_/ / / / (__  )  "
"/_/  \__,_/_/ /_/\___/\__/_/\____/_/ /_/____/   "
"                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""

function TrimTrailingWhiteSpace()
  %s/\s\+$//e
  call setpos('.', getpos("''"))
endfunction

function TrimTrailingNewLine()
  %s/\n\+\%$//e
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""
"               __                           __ "
"  ____ ___  __/ /_____  _________ ___  ____/ / "
" / __ `/ / / / __/ __ \/ ___/ __ `__ \/ __  /  "
"/ /_/ / /_/ / /_/ /_/ / /__/ / / / / / /_/ /   "
"\__,_/\__,_/\__/\____/\___/_/ /_/ /_/\__,_/    "
"                                               "
"""""""""""""""""""""""""""""""""""""""""""""""""

" on save -> trailing whitespaces
autocmd BufWritePre * :call TrimTrailingWhiteSpace()

" on save -> trailing new lines
autocmd BufWritePre * :call TrimTrailingNewLine()
