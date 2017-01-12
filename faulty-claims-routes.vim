let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git_repos/reps
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +83 backend-service/backend/api/v1/resources/retail/returns/faulty_claims.py
badd +26 backend-service/backend/api/v1/resources/retail/returns/tests/test_retail_faulty_claims.py
badd +68 backend-service/backend/api/v1/resources/wholesale/returns/tests/test_wholesale_faulty_claims.py
badd +87 website-service/src/routes.jsx
badd +67 website-service/src/faultyClaims/containers/RetailPendingFaultyClaimListContainer.jsx
argglobal
silent! argdel *
edit backend-service/backend/api/v1/resources/retail/returns/tests/test_retail_faulty_claims.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 36 - ((35 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
36
normal! 05|
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
