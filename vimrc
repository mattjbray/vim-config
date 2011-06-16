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
    set columns=120
    set lines=50
    set gfn=Consolas:h9:cANSI
endif

" Gundo
nnoremap <F5> :GundoToggle<CR>

set background=dark

set completeopt+=longest

" Python
autocmd FileType python set foldmethod=indent

" Things to call when Clipbrd is used
function! Clipbrd_init()
    only
    set fo=
    set spell
    set wrap linebreak
    noremap j gj
    noremap k gk
    noremap 0 g0
    noremap $ g$
endfunction

" NetRW
let g:netrw_list_hide= '\.swp,\.pyc'
let g:netrw_liststyle= 3

" FuzzyFinder
noremap <F4> :FufFile **/<CR>
noremap <C-F4> :FufFileWithCurrentBufferDir **/<CR>
