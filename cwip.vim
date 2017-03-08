let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git_repos/reps
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +150 backend-service/backend/api/v1/resources/retail/returns/tests/test_faulty_claim_collection.py
badd +1 backend-service/backend/api/v1/resources/retail/returns/tests/test_retail_faulty_claim_singleton.py
badd +20 backend-service/backend/api/v1/resources/retail/returns/faulty_claims.py
badd +65 backend-service/backend/api/v1/utils/__init__.py
badd +9 backend-service/backend/api/v1/schemas/faulty_claim_schema.py
badd +11 backend-service/backend/api/v1/resources/faulty_claims/tests/test_fc_is_packaged_filter.py
badd +22 backend-service/backend/api/v1/resources/wholesale/returns/faulty_claims.py
badd +7 backend-service/backend/api/v1/resources/retail/returns/__init__.py
badd +19 backend-service/backend/tasks/tests/test_celery_sync_worker.py
badd +23 backend-service/backend/api/v1/resources/faulty_claims/tests/test_faulty_claim_singleton.py
badd +75 backend-service/backend/testing/api_test_case.py
argglobal
silent! argdel *
edit backend-service/backend/api/v1/resources/faulty_claims/tests/test_faulty_claim_singleton.py
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
let s:l = 11 - ((10 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOcI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
