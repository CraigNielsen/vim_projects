let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git_repos/reps
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +50 website-service/src/main/pages/parts/LegacyStockCheck.jsx
badd +27 backend-service/backend/models/legacy_cases.py
badd +38 website-service/src/main/pages/users/create.jsx
badd +68 website-service/src/branches/index.jsx
badd +24 backend-service/backend/tradegecko/upsert_part_on_tradegecko.py
badd +16 backend-service/backend/tradegecko/update_part_on_tradegecko.py
badd +1 backend-service/backend/tasks/__init__.py
badd +22 backend-service/backend/tasks/tradegecko.py
badd +1 backend-service/backend/tasks/upsert_products.py
badd +50 backend-service/backend/models/parts.py
badd +13 backend-service/backend/models/tg_variant.py
badd +26 backend-service/backend/tradegecko/utils/__init__.py
argglobal
silent! argdel *
edit backend-service/backend/tradegecko/utils/__init__.py
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
let s:l = 26 - ((25 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 0
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
