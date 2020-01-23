set tags=./tags;/ " this looks into the currect directory for 'TAGS', and looks recursively up towards root until one is found.

" ctrl + \: open the definition in a new tab (note that is control + backslash not forward slash
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" alt + ] open the definition in a vertical split. currently can't get this one to work...
map <C-O> :vsp <CR>:exec("tag ".expand("<cword>"))<CR> 
"map <C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR> 

" always have set line numbers
"set relativenumber
"set number
set nonumber

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

"autocmd BufWinLeave * mkview!
"autocmd BufWinEnter * silent loadview

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

set pastetoggle=<F3>



" makefile special configs
" Allow tabs in Makefiles.
autocmd FileType make,automake set noexpandtab shiftwidth=2 softtabstop=2

"autocmd FileType python setlocal foldmethod=indent | set foldenable | set foldlevel=2

autocmd FileType python setlocal foldmethod=indent | set foldenable | set shiftwidth=2 | set tabstop=2 | set foldlevel=1
"autocmd FileType python setlocal foldmethod=indent | set foldenable | set shiftwidth=4 | set tabstop=4

"setlocal foldmethod=indent
"set foldenable
"set foldlevel=2
"au BufReadPost,BufNewFile *.py set foldmethod=indent foldnestmax=2

set viminfo='20,\"50,:20,%,n~/.viminfo

" set min num lines vim goes back to look for a comment. this prevents vim from incorrectly commenting stuff that it shouldn't as long as it can find the end of the last comment(s) (i think) within 1000 lines ...not sure this actually works as I want it to.
syntax sync minlines=1000
