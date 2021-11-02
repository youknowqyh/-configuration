syntax on
set tabstop=4
set shiftwidth=4 
set expandtab 
set ai
set number
set hlsearch
set ruler
set clipboard=unnamed
highlight Comment ctermfg=green

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
        exec '!python %'
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'html'
        exec '!open %'
    endif                                                                              
endfunc
