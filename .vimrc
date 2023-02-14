" Try to load minpac
packadd minpac
" packadd! onedark.vim

if !exists('g:loaded_minpac')
    " minpac is not available.
    " Settings for plugin-less environment
    ...
else
    " minpac is available
    call minpac#init()
    call minpac#add('k-takata/minpac', {'type' : 'opt'})
    
    " Additional plugins here
    call minpac#add('joshdick/onedark.vim')
    call minpac#add('itchyny/lightline.vim')
    call minpac#add('majutsushi/Tagbar')
    call minpac#add('preservim/nerdtree')
    call minpac#add('kien/ctrlp.vim')
    
    " Plugin setting here
    
    " NERDTree config
    " autocmd vimenter * NERDTree
    map <C-t> :NERDTreeToggle<CR>
    let g:NERDTreeDirArrowExpandable = '▸'
    let g:NERDTreeDirArrowCollapsible = '▾'

    " ctrlp config
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    let g:ctrlp_working_path_mode = 'ra'

endif

" Define user commands for updating/cleaning the plugins.
if has('eval')
    "Minpac commands
    command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do' : 'call minpac#status()'})
    command! PackClean packadd minpac | source $MYVIMRC | call minpac#clean()
    command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()
endif

" Common setting here

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set completeopt=menu

syntax on

filetype on
filetype plugin on
filetype indent on

set nobackup
setlocal noswapfile
set bufhidden=hide

set noerrorbells

" Text
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green
