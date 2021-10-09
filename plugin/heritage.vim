augroup CreateMissingDirectories
    autocmd!
    autocmd BufWritePre * :call s:CreateMissingDirectories(expand('<afile>'), +expand('<abuf>'))
augroup END

function s:CreateMissingDirectories(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
