"
" Vim Darkmate Theme (darkmate.vim)
"
" Author: Matias Niemelä <matias@yearofmoo.com>
"
" Note: Based on the original darkmate theme for gedit
" by Luigi Maselli <luigix_@t_gmail_com>
" 
" Reset the whole thing
set background=dark
highlight clear

if exists("syntax_on")
        syntax reset
    endif

let g:colors_name = "darkmate"

" Line and Columns
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline
set cursorline 

" Font
set guifont=Monaco:h12

" Main Colors
hi Normal             guibg=#232323 ctermbg=235   guifg=#FFFFFF ctermfg=15  gui=none
hi Visual          guifg=#FFFFFF ctermfg=       15    guibg=#555753 ctermbg=240 gui=none 
hi String             guifg=#96ff00 ctermfg=118                             gui=none
hi Delimiter          guifg=#96ff00 ctermfg=118                             gui=none
hi Boolean            guifg=#ff44cc ctermfg=206                             gui=none
hi Constant           guifg=#FFFFFF ctermfg=15                              gui=none
hi Number             guifg=#00c99b ctermfg=42                              gui=none
hi Statement          guifg=#FF9900 ctermfg=208                             gui=none
hi Character          guifg=#FF9900 ctermfg=208                             gui=none
hi Comment            guifg=#bb66ff ctermfg=135                             gui=none
hi Repeat             guifg=#FF9900 ctermfg=208                             gui=none
hi Type               guifg=#009cff ctermfg=39                              gui=none
hi Label              guifg=#FF9900 ctermfg=208                             gui=none
hi Conditional        guifg=#FF9900 ctermfg=208                             gui=none
hi Exception          guifg=#FF9900 ctermfg=208                             gui=none
hi Function           guifg=#FFFFFF ctermfg=15                              gui=none
hi Define             guifg=#FF9900 ctermfg=208                             gui=none
hi LineNr             guifg=#FFFFFF ctermfg=15                              gui=none
hi CursorLine         guibg=#000000 ctermbg=0                               gui=none

" Vim Stuff
hi vimGroup           guifg=#FFFFFF ctermfg=15                    gui=none
hi vimHiGroup         guifg=#FFFFFF ctermfg=15                    gui=none
hi vimSetEqual        guifg=#FF44CC ctermfg=206                   gui=none
hi vimSet             guifg=#FF44CC ctermfg=206                   gui=none
hi vimOption          guifg=#FFFFFF ctermfg=15                    gui=none
hi vimHighLight       guifg=#FF9900 ctermfg=208                   gui=none
hi vimNotFunc         guifg=#FF9900 ctermfg=208                   gui=none
hi vimCommand         guifg=#FF9900 ctermfg=208                   gui=none

" C Stuff
hi cCharacter           guifg=#FF9900 ctermfg=208                 gui=none

" PHP Stuff
hi phpParent            guifg=#FFFFFF ctermfg=15                  gui=none
hi phpInclude           guifg=#FF9900 ctermfg=208                 gui=none
hi phpIdentifier        guifg=#00c900 ctermfg=2                   gui=none

