let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git_repos/reps
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +8 backend-service/backend/legacy/sync/tests/test_upsert_products.py
badd +4 backend-service/backend/legacy/sync/upsert_products.py
badd +7 backend-service/backend/jobs/pull_legacy_entities_job.py
badd +2 backend-service/backend/tasks/upsert_legacy_data_to_reps_task.py
badd +16 backend-service/backend/__init__.py
badd +1 backend-service/backend/legacy/sync/pull_legacy_entities2.py
badd +33 backend-service/backend/legacy/sync/upsert_reps_faulty_claims.py
badd +1 backend-service/backend/legacy/__init__.py
badd +3 backend-service/backend/legacy/sync/__init__.py
argglobal
silent! argdel *
edit backend-service/backend/tasks/upsert_legacy_data_to_reps_task.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 69) / 139)
exe '2resize ' . ((&lines * 63 + 38) / 77)
exe 'vert 2resize ' . ((&columns * 107 + 69) / 139)
exe '3resize ' . ((&lines * 10 + 38) / 77)
exe 'vert 3resize ' . ((&columns * 107 + 69) / 139)
argglobal
enew
file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 3 - ((2 * winheight(0) + 31) / 63)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 69) / 139)
exe '2resize ' . ((&lines * 63 + 38) / 77)
exe 'vert 2resize ' . ((&columns * 107 + 69) / 139)
exe '3resize ' . ((&lines * 10 + 38) / 77)
exe 'vert 3resize ' . ((&columns * 107 + 69) / 139)
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