set nocompatible
filetype off
if has("autocmd")
    filetype plugin indent on
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

set number
set relativenumber

" tabs to spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Colors
set t_Co=256
colorscheme custom
syntax on
set cursorline
hi CursorLine cterm=bold ctermbg=18 ctermfg=NONE

" Show highlighting groups for current word
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

