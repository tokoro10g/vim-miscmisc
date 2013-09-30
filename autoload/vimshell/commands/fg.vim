let s:save_cpo=&cpo

set cpo&vim

let s:command={'name':'fg',
			\'kind':'internal',
			\'description':'close vimshell'}

function! vimshell#commands#fg#define()
	return s:command
endfunction

function! s:command.execute(args,context)
	:q
endfunction

let &cpo=s:save_cpo
unlet s:save_cpo

