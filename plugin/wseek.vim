" WSeek
"
" quoted from
" http://stackoverflow.com/questions/5305137/switching-to-vim-window-by-name
"
" modified by Tokoro (tokoro10g@tokor.org)

function! WSeek(target) 
  if !has('python')
    echo "Error: this plugin requires vim with +python"
    finish
  else
python << EOF

import vim

target = vim.eval("a:target")
found = False
for i in range(0, len(vim.windows)):
  vim.command(str(i+1) + "wincmd w")
  bits = vim.current.buffer.name.split("/")
  bits = bits[-1]
  if (bits.startswith(target)):
    found = True
    break

# Go back to the start on no match
if not found:
  vim.command("throw \"not found\"")

EOF
  endif
endfunction 

command! -nargs=1 WSeek :call WSeek(<q-args>)
