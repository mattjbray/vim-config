set nocompatible
filetype plugin indent on
syntax on

" Pathogen
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags() 

" Gundo
nnoremap <F5> :GundoToggle<CR>

set background=dark

set expandtab
set tabstop=4
set shiftwidth=4

set completeopt+=longest

" Viki
let g:vikiNameSuffix=".viki"
autocmd! BufRead,BufNewFile *.viki set filetype=viki

" Latex
" Use pdf's
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf = 'evince'
" Load latexsuite in empty .tex files
let g:tex_flavor = 'latex'

" Python
autocmd FileType python set foldmethod=indent
