
" make tags automatically load depending on the sandbox
set tags=./TAGS;/ " this looks into the currect directory for 'TAGS', and looks recursively up towards root until one is found.

" ctrl + \: open the definition in a new tab (note that is control + backslash not forward slash
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" alt + ] open the definition in a vertical split. currently can't get this one to work...
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR> 

" always have set line numbers
set nonumber
" set relativenumber

" set up spaces
set tabstop=2
set shiftwidth=2
set expandtab

" make newlines autoindent
set autoindent

" color stuff
syntax on
" trying to use default for now...the dark blue on the comments is nice for my brain haha.
colorscheme desert 

" map ; to :
nmap ; :

" map ctrl+j and ctrl+k to down and up half a screen
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>
vnoremap <C-j> <C-d>
vnoremap <C-k> <C-u>

" make views automatically load
"autocmd BufWinLeave *.* mkview!
"autocmd BufWinEnter *.* silent loadview
autocmd BufWinLeave * mkview!
autocmd BufWinEnter * silent loadview

" map space to something.
"nnoremap <space> <C>
"nnoremap <Space>] <C-]>
"nnoremap <@-j> <C-d>

" map f to za
nnoremap f za
vnoremap f zf
