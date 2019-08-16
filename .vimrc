" trying to set the TAGS file according to which sandbox you're in.
let &tags=$SANDBOX.'/Work/Software/tags'

" always have set line numbers
"set number
"set nonumber
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
" autocmd BufWinLeave *.* mkview!
" autocmd BufWinEnter *.* silent loadview

" autocmd BufWinLeave * mkview!
" autocmd BufWinEnter * silent loadview

"augroup AutoSaveFolds
"  autocmd!
"  au BufWinLeave ?* mkview 1
"  au BufWinEnter ?* silent loadview 1
"augroup END

" map space to something.
"nnoremap <space> <C>
"nnoremap <Space>] <C-]>
"nnoremap <@-j> <C-d>

" map f to za
nnoremap f za
vnoremap f zf

" imap <buffer> :fo <C-O>mzfor( %%%; %%%; %%%)<CR>{ // %%%<CR>%%%<CR>}<CR><C-O>'z;;




