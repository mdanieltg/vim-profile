syntax on
set hlsearch

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
if has("gui_win32")
  let &guioptions = substitute(&guioptions, "t", "", "g")
  set guifont=Source\ Code\ Pro\ 10
endif

colorscheme darkblue

" vim: ts=2 et
