syn clear
syn case ignore

syn region TaskPrio1 start=/^W\?-\s/ end=/$/ oneline
syn region TaskPrio2 start=/^W\?--\s/ end=/$/ oneline
syn region TaskPrio3 start=/^W\?---\s/ end=/$/ oneline
syn region TaskDone start=/^[DC]-/ end=/$/ oneline
syn region TaskFail start=/^[F]-/ end=/$/ oneline
syn region SubItemToDo start=/^	-\s/ end=/$/ oneline
syn region SubItem start=/^	-[RDICF]\s/ end=/$/ oneline
syn region TimeLine start=/^=\{5}/ end=/$/ oneline

hi Normal guibg=grey20
hi TaskPrio1 guifg=#ff7777 ctermfg=yellow
hi TaskPrio2 guifg=cyan ctermfg=brown
hi TaskPrio3 guifg=#009999 ctermfg=darkblue
hi TaskDone guifg=grey70 ctermfg=grey
hi TaskFail guifg=#FFCC99 ctermfg=grey
hi SubItem guifg=darkgrey  ctermfg=darkgrey
hi SubItemToDo guifg=darkgreen ctermfg=darkgreen
hi TimeLine guibg=darkgrey ctermbg=darkgrey

set noexpandtab
set tabstop=4
set shiftwidth=4

" Quick insert date
iab <expr> til ShowTimeLine()

func! ShowTimeLine()
    return "=====" . strftime("%Y-%m-%d %H:%M") . "====="
endfunc
