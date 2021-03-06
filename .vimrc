" WSL Debian
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
colorscheme torte 
highlight Normal guifg=white
set guifont=Consolas:h11

"if exists('$TMUX')
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[1 q"
"endif

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
inoreabbr ///# /// <summary><Esc>o///<Esc>o/// </summary><Esc>kA
inoreabbr for# for (int i = 0; i <N; i++)<Esc>FNcw
inoreabbr forC for (size_t i = 0; i <N; ++i)<Esc>FNcw
