let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.local/share/nvim/site/pack/packer/start/nvim-treesitter
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
set shortmess=aoO
badd +1 lua/nvim-treesitter.lua
badd +8 lua/nvim-treesitter/caching.lua
badd +165 lua/nvim-treesitter/info.lua
badd +543 lua/nvim-treesitter/parsers.lua
badd +29 queries/markdown_inline/highlights.scm
badd +66 lua/nvim-treesitter/install.lua
badd +94 README.md
badd +196 lockfile.json
badd +1 parser-info/markdown_inline.revision
badd +1 parser-info/markdown.revision
argglobal
%argdel
$argadd .
edit queries/markdown_inline/highlights.scm
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 40 + 118) / 237)
exe 'vert 2resize ' . ((&columns * 97 + 118) / 237)
exe 'vert 3resize ' . ((&columns * 98 + 118) / 237)
argglobal
enew
file neo-tree\ filesystem\ \[1]
setlocal fdm=manual
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/.local/share/nvim/site/pack/packer/start/nvim-treesitter
wincmd w
argglobal
balt ~/.local/share/nvim/site/pack/packer/start/nvim-treesitter/lockfile.json
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 33 - ((29 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 33
normal! 0
lcd ~/.local/share/nvim/site/pack/packer/start/nvim-treesitter
wincmd w
argglobal
if bufexists(fnamemodify("~/.local/share/nvim/site/pack/packer/start/nvim-treesitter/lua/nvim-treesitter/parsers.lua", ":p")) | buffer ~/.local/share/nvim/site/pack/packer/start/nvim-treesitter/lua/nvim-treesitter/parsers.lua | else | edit ~/.local/share/nvim/site/pack/packer/start/nvim-treesitter/lua/nvim-treesitter/parsers.lua | endif
if &buftype ==# 'terminal'
  silent file ~/.local/share/nvim/site/pack/packer/start/nvim-treesitter/lua/nvim-treesitter/parsers.lua
endif
balt ~/.local/share/nvim/site/pack/packer/start/nvim-treesitter/lua/nvim-treesitter/info.lua
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
541
normal! zo
let s:l = 533 - ((0 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 533
normal! 012|
lcd ~/.local/share/nvim/site/pack/packer/start/nvim-treesitter
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 40 + 118) / 237)
exe 'vert 2resize ' . ((&columns * 97 + 118) / 237)
exe 'vert 3resize ' . ((&columns * 98 + 118) / 237)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
