let g:airline#themes#molokaimod#palette = {}

let g:airline#themes#molokaimod#palette.accents = {
      \ 'red': [ '#66d9ef' , '' , 81 , '' , '' ],
      \ }


" Normal mode
let s:N1 = [ '#080808' , '#A6E22E' , 232 , 118 ] " mode
let s:N2 = [ '#f8f8f0' , '#232526' , 253 , 235  ] " info
let s:N3 = [ '#f8f8f0' , '#465457' , 253 , 238  ] " statusline

let g:airline#themes#molokaimod#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#molokaimod#palette.normal_modified = {
      \ 'airline_c': [ '#080808' , '#FD971F' , 232 , 208 , '' ] ,
      \ }


" Insert mode
let s:I1 = [ '#080808' , '#66d9ef' , 232 , 81 ]
let s:I2 = [ '#f8f8f0' , '#232526' , 253 , 235 ]
let s:I3 = [ '#f8f8f0' , '#465457' , 253 , 238 ]

let g:airline#themes#molokaimod#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#molokaimod#palette.insert_modified = {
      \ 'airline_c': [ '#080808' , '#FD971F' , 232 , 208 , '' ] ,
      \ }


" Replace mode
let g:airline#themes#molokaimod#palette.replace = copy(g:airline#themes#molokaimod#palette.insert)
let g:airline#themes#molokaimod#palette.replace.airline_a = [ s:I1[0]   , '#F92672' , s:I1[2] , 197     , ''     ]
let g:airline#themes#molokaimod#palette.replace_modified = {
      \ 'airline_c': [ '#080808' , '#F92672' , 232 , 197 , '' ] ,
      \ }


" Visual mode
let s:V1 = [ '#080808' , '#fd971f' , 232 , 208 ]
let s:V2 = [ '#f8f8f0' , '#232526' , 253 , 235  ]
let s:V3 = [ '#f8f8f0' , '#465457' , 253 , 238  ]

let g:airline#themes#molokaimod#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#molokaimod#palette.visual_modified = {
      \ 'airline_c': [ '#080808' , '#fd971f' , 232 , 208 , '' ] ,
      \ }


" Inactive
let s:IA = [ '#1b1d1e' , '#465457' , 233 , 238 , '' ]
let g:airline#themes#molokaimod#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#molokaimod#palette.inactive_modified = {
      \ 'airline_c': [ '#f8f8f0' , ''        , 253 , ''  , '' ] ,
      \ }


" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#molokaimod#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f8f8f0' , '#465457' , 253 , 238  , ''     ] ,
      \ [ '#f8f8f0' , '#232526' , 253 , 235  , ''     ] ,
      \ [ '#080808' , '#e68b74' , 232 , 144 , 'bold' ] ,
      \)

