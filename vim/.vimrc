syntax on
filetype plugin indent on

"*****************************************************************************
""" Vim-PLug core, PlugInstall to install
"*****************************************************************************
" Required:
call plug#begin('~/.vim/plugged')
" On-demand loading
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/vim-signature'
Plug 'vim-syntastic/syntastic'
" c
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'

" Initialize plugin system
 call plug#end()

" // The switch of the Source Explorer

" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 8

" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100

" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

" // In order to avoid conflicts, the Source Explorer should know what plugins
" // except itself are using buffers. And you need add their buffer names into
" // below listaccording to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_"
    \ ]

" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1

" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" // create/update the tags file
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

" // Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F12>"

" // Set "<F3>" key for displaying the previous definition in the jump list
"let g:SrcExpl_prevDefKey = "<F3>"

" // Set "<F4>" key for displaying the next definition in the jump list
"let g:SrcExpl_nextDefKey = "<F4>"

" // Set buffer labels display when there are at least two buffers.
let g:buftabline_show = 1

" If you want to use VIM with Source Explorer in the UNIXs-console, I suggest map the keys below to jump from one window to another.
noremap <C-W>l <C-W>l
noremap <C-W>k <C-W>k
noremap <C-W>j <C-W>j
noremap <C-W>h <C-W>h

" Below key mappings can replace the Vim feature for jumping to previously visited locations via jump list.
nmap <C-I> <C-W>j:call g:SrcExpl_Jump()<CR>
nmap <C-O> :call g:SrcExpl_GoBack()<CR>

" Use this command to custimize ur window size by ur mouse
set mouse=nv

" //Set "F2" key for move to previuos tab
nmap <F2> :bprevious<CR>

" //Set "F3" key for move to net tab
nmap <F3> :bnext<CR>

" Close the window showing the location list for the current window.
nmap <F8>  :lcl<CR>

" Open and close the Taglist separately
nmap <F10> :TrinityToggleTagList<CR>

" Open and close the NERD Tree separately
nmap <F11> :TrinityToggleNERDTree<CR>

" auto load all plugins in vim bundle
execute pathogen#infect()

" add plugin crtlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

" {{{ Config Vim UI
set hlsearch			" add highlight search
colorscheme slate		" set vim color
set t_Co=256			" set 256 colors in vim
set laststatus=2		" always show tab line
" }}}

" {{{ Automatically switch between absolute and relative line number
set number
set relativenumber
autocmd FocusLost   * :set number
autocmd FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
" }}}

" {{{ tab = 4 space
    set tabstop=4 shiftwidth=4 expandtab
"}}}

" {{{ High light unwanted spaces in end of line
highlight ExtraWhitespace ctermbg=darkred guibg=darkcyan
autocmd BufEnter * if &ft != 'help' | match ExtraWhitespace /\s\+$/ | endif
autocmd BufEnter * if &ft == 'help' | match none /\s\+$/ | endif
" }}}

" {{{ Syntastic Setting
"let g:syntastic_always_populate_loc_list=1
"let g:syntastic_error_symbol='✗'
"let g:syntastic_warning_symbol='⚠'
"let g:syntastic_style_error_symbol = '✗'
"let g:syntastic_style_warning_symbol = '⚠'
"let g:syntastic_auto_loc_list=1
"let g:syntastic_aggregate_errors=1
"let g:syntastic_c_compiler="arm-none-linux-gnueabi-gcc --sysroot=/opt/codesourcery/arm-none-linux-gnueabi/libc"
"let g:syntastic_c_no_default_include_dirs=1
"let g:syntastic_c_remove_include_errors=1
"let g:syntastic_c_include_dirs = 
"["/srv/home/galvin/Project/AMI-AST2500/src/target_ex/usr/include",
"/srv/home/galvin/Project/AMI-AST2500/src/target_ex/usr/include/arm-linux-gnueabi",
"/srv/home/galvin/Tools/syntastic/c16"]
""let g:syntastic_c_no_include_search=1
" }}}
"
