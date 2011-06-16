" Pathogen
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags() 

set nocompatible
filetype plugin indent on
syntax on

set hidden
set number

set ts=4 sts=4 sw=4 expandtab

"Styles, fonts and colourschemes
colorscheme desertmod

if has('win32')
    set gfn=Consolas:h9:cANSI
endif

" Gundo
nnoremap <F5> :GundoToggle<CR>

set background=dark

set completeopt+=longest

" Python
autocmd FileType python set foldmethod=indent
