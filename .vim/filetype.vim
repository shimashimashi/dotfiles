augroup filetypedetect
  au BufRead, BufNewFile *.rb *.erb setfiletype ruby
  au BufRead, BufNewFile *.php setfiletype php
  au BufRead, BufNewFile *.swift setfiletype swift
augroup END
