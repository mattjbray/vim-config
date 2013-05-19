" Reload vimrc on write
autocmd! bufwritepost *vimrc source %

" Pathogen
call pathogen#infect() 

set nocompatible
filetype plugin indent on
syntax on

set hidden
set number

set ts=2 sts=2 sw=2 expandtab

" Styles, fonts and colourschemes
set background=dark
let g:solarized_termtrans=1
colorscheme solarized
set colorcolumn=80 " highlight the 80th column

if has('win32')
    set columns=120
    set lines=50
    set gfn=Consolas:h9:cANSI
endif

" Hide the toolbar in gui
if has('gui_running')
  set guioptions=-t
  set guifont=Menlo\ Regular:h14
end

" Key mappings
nnoremap <C-j> gt
nnoremap <C-k> gT

" Keep selection after indent
vnoremap < <gv
vnoremap > >gv

" Gundo
nnoremap <F5> :GundoToggle<CR>

set completeopt+=longest

" Python
autocmd FileType python set foldmethod=indent

" Ruby
autocmd FileType ruby,eruby set foldmethod=indent

" Disable pyflakes quickfix window
let g:pyflakes_use_quickfix= 0

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
noremap \f :FufFile<CR>
noremap \F :FufFileWithCurrentBufferDir<CR>
noremap \b :FufBuffer<CR>
noremap \r :FufRenewCache<CR>

" NERDTree
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
noremap \t :NERDTreeToggle<CR>

" Autodelete hidden fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

noremap \gc :Gcommit<CR>
noremap \gd :Gdiff<CR>
noremap \gs :Gstatus<CR>
noremap \gw :Gwrite<CR>
