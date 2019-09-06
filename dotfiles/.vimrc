" Author: Ali Raza
" GitHub: aaraza

" Basic Setting
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set mouse=a
set textwidth=500
set lbr
set number
set showmatch
set noswapfile
set expandtab ts=2 sw=2 ai si
set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
set backspace=indent,eol,start
set expandtab shiftwidth=2 softtabstop=2 smarttab
syntax on

" Vundle Settings
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'sjl/badwolf'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required
filetype plugin indent on    " required

" Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

" Tagbar Settings
let g:tagbar_type_markdown = {
        \ 'ctagstype' : 'markdown',
        \ 'kinds' : [
            \ 'h:headings'
        \ ],
    \ 'sort' : 0,
    \ }

" Misc Settings
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
let g:ycm_cache_omnifunc = 0
let g:vim_markdown_folding_disabled = 1

" Key mappings
nmap <C-t> :TagbarToggle<CR>
nmap <C-n> :NERDTree<CR>
colorscheme badwolf
