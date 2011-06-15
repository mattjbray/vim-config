" Pathogen
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags() 

set nocompatible
filetype plugin indent on
syntax on

set hidden
set number

set ts=2 sts=2 sw=2 expandtab

" Gundo
nnoremap <F5> :GundoToggle<CR>

set background=dark

set completeopt+=longest

" Python
autocmd FileType python set foldmethod=indent
