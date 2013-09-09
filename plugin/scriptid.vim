" Script ID functions
"
" quoted from
" http://mattn.kaoriya.net/software/vim/20090826003359.htm
"
" author: mattn
function! GetScriptID(fname)
	let snlist = ''
	redir => snlist
	silent! scriptnames
	redir END
	let smap = {}
	let mx = '^\s*\(\d\+\):\s*\(.*\)$'
	for line in split(snlist, "\n")
		let smap[tolower(substitute(line, mx, '\2', ''))] = substitute(line, mx, '\1', '')
	endfor
	return smap[tolower(a:fname)]
endfunction

function! GetFunc(fname, funcname)
	let sid = GetScriptID(a:fname)
	return function("<SNR>".sid."_".a:funcname)
endfunction

function! HookFunc(funcA, funcB)
	if type(a:funcA) == 2
		let funcA = substitute(string(a:funcA), "^function('\\(.*\\)')$", '\1', '')
	else
		let funcA = a:funcA
	endif
	if type(a:funcB) == 2
		let funcB = substitute(string(a:funcB), "^function('\\(.*\\)')$", '\1', '')
	else
		let funcB = a:funcB
	endif
	let oldfunc = ''
	redir => oldfunc
	silent! exec "function ".funcA
	redir END
	let g:hoge = oldfunc
	exec "function! ".funcA."(...)\nreturn call('" . funcB . "', a:000)\nendfunction"
endfunction

