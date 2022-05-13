syntax on
set tabstop=4
set shiftwidth=4 
set expandtab
set ai
set number
set hlsearch
set ruler
colorscheme peachpuff
highlight Comment ctermfg=green

set clipboard=unnamed

map <C-a> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w" 
    if &filetype == 'c' 
        exec '!g++ % -o %<'
        exec '!./%<'
    elseif &filetype == 'cpp'
        exec '!g++ -std=c++11 % -o %<'
        exec '!./%<'
    elseif &filetype == 'java'
        exec '!javac %'
        exec '!java %<'
    elseif &filetype == 'python'
        exec '!python3 %'
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'html'
        exec '!open %'
    endif                                                                              
endfunc
