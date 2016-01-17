" Pathogen plugin manager
execute pathogen#infect()

" Use 2 spaces for tabs
:set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Show line numbers
:set nu

" Try to recognize file type automatically
filetype plugin on

" I think this is for cisco acl syntax...
augroup filetype
        au! BufRead,BufNewFile *.crules     set filetype=ciscoacl
        au! BufRead,BufNewFile *.acl        set filetype=ciscoacl
augroup END

" Theme
colorscheme base16-default
set background=dark

" NerdTree
" ctrl+z to open nerdtree
map <C-z> :NERDTreeToggle<CR>

" CtrlP
" ctrl+p to open CtrlP
let g:ctrlp_map = '<c-p>'
" Ignore swap and other system files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|vagrant)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" python config
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 80
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Red
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
    autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
    augroup END

" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args="--ignore=E501,W601,F403,E128"
let g:syntastic_shell = '/bin/sh'

nnoremap <F2> :SyntasticToggleMode<CR>
nnoremap <C-w>E :SyntasticCheck<CR>

" highlight current word (this works *meh*)
nnoremap <C-w>H :autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))<CR>
nnoremap <C-w>J :autocmd! CursorMoved *<CR>

" Use Delete Whitespace plugin to automatically delete trainling whitespace on
" save.  See http://www.vim.org/scripts/script.php?script_id=3967 for details.
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'

" Four space tabs on php files.
autocmd FileType php setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
