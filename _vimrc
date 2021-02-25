set encoding=utf-8
set fileencoding=utf-8
set nohlsearch
set relativenumber
set visualbell
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set backspace=indent,eol,start
set ruler
set number

syntax on
colorscheme industry 
hi Normal guifg=white
hi Constant guifg=limegreen
hi Function guifg=cyan
hi Special guifg=magenta
hi Type guifg=green gui=bold
hi Statement guifg=yellow gui=NONE
hi PreProc guifg=darkgrey 

set guioptions -=m
set guioptions -=T
set guifont=Consolas:h11

inoremap <expr> ( strpart(getline("."), col(".")-1, 1) =~? '\S' ? '(' : '()<left>'
inoremap <expr> [ strpart(getline("."), col(".")-1, 1) =~? '\S' ? '[' : '[]<left>'
inoremap <expr> " strpart(getline("."), col(".")-1, 1) =~? '\S' ? '"' : '""<left>'  
inoremap <expr> { strpart(getline("."), col(".")-1, 1) =~? '\S' ? '{' : '{}<left>'

inoremap <expr> ) strpart(getline("."), col(".")-1, 1) =~? ')' ? '<right>' : ')'
inoremap <expr> ] strpart(getline("."), col(".")-1, 1) =~? ']' ? '<right>' : ']'
inoremap <expr> " strpart(getline("."), col(".")-1, 1) =~? '"' ? '<right>' : '"'
inoremap <expr> } strpart(getline("."), col(".")-1, 1) =~? '}' ? '<right>' : '}'

inoreabbr /** /**/<Esc>hi
"TODO Set filetype specific "snippets
inoreabbr ///# /// <summary><Esc>o///<Esc>o/// </summary><Esc>o/// <param name=""> </param><Esc>o/// <returns> </returns><Esc>kkF>A
inoreabbr for# for (int i = 0; i <N; i++)<Esc>FNcw
inoreabbr forC for (size_t i = 0; i <N; ++i)<Esc>FNcw


au BufRead,BufNewFile *.gd set filetype=gdscript3
set shell=powershell
