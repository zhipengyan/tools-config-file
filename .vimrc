set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
" colors
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'gilgigilgil/anderson.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'daylerees/colour-schemes', {'rtp': 'vim/'}
Plugin 'trusktr/seti.vim'

Plugin 'ctrlp.vim'
" from github
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-surround'
" suojin level xianshi 
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mattn/emmet-vim'
Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'othree/tern_for_vim_coffee' " 实现coffee的js代码补全
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
Plugin 'hail2u/vim-css3-syntax'
Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'isRuslan/vim-es6'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'Yggdroot/LeaderF'
Plugin 'mbbill/undotree'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-pathogen'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
" 符号自动补全
Plugin 'Raimondi/delimitMate'
Plugin 'ternjs/tern_for_vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'tpope/vim-commentary'
Plugin 'terryma/vim-expand-region'
Plugin 'qpkorr/vim-bufkill'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
execute pathogen#infect()

"set guifont=Source\ Code\ Pro:h13
"set guifont=Input\ Mono:h13
set guifont=Hermit:h14
set number "显示行号
"set guitablabel=\[%N\]\ %t\ %M 
"set autochdir " 自动切换当前目录为当前文件所在的目录
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
"set nowrapscan " 禁止在搜索到文件两端时重新搜索
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set cursorline " 突出显示当前行
set ruler " 打开状态栏标尺
set shiftwidth=2 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=2 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=2 " 设定 tab 长度为 4
set expandtab "设定使用空格代替制表符 用制表符使用noexpandtab
" 针对不同文件设置缩进量
if has("autocmd")
  autocmd FileType php set noexpandtab
	autocmd FileType javascript,coffee setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType html,ejs,jst,xml,css,tpl setlocal ts=4 sts=4 sw=4 expandtab
	autocmd FileType scss setlocal ts=4 sts=4 sw=4 expandtab iskeyword+=-
endif
set cursorline cursorcolumn
" Yank text to the OS X clipboard" 将文本复制到OS X剪贴板中
noremap <leader>y "*y
noremap <leader>yy "*Y
"  
" Preserve indentation while pasting text from the OS X clipboard 在粘贴OS
" X剪贴板中的文本时保留缩进
noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>

let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_guide_size=1
let g:indent_guides_start_level = 1
"==============================
" 设置配色方案
" =============================
" syntax enable
colorscheme solarized
if has('gui_running')
	set background=dark
else
  colorscheme seti
endif

" molokai
" colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1

" hybrid_material
" colorscheme hybrid_material
" let g:enable_bold_font = 1

" anderson
"if has('gui_running')
"  colorscheme anderson
"else
"  colorscheme hybrid_material
"endif

" hybrid
" colorscheme hybrid

" seti ui
" colorscheme seti

"colorscheme slime
"设置输入法切换
"set noimdisable
"autocmd! InsertLeave * set imdisable|set iminsert=0
"autocmd! InsertEnter * set noimdisable|set iminsert=0
"set imdisable
"set imactivatekey=D-space
"set imsearch=0
"set imcmdline=0
"autocmd! CompleteDone * set imdisable|set iminsert=0 "for macvim

"==============================
" set my leader
" =============================
" let mapleader=","
" let g:mapleader=","
let mapleader = ' '
let g:mapleader = ' '

"==============================
" NerdTree configure
" =============================
let NERDTreeQuitOnOpen = 1
let NERDChristmasTree = 1
let g:NERDTreeWinSize = 25
map <leader><leader> :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<CR>

"==============================
" NerdTreeTabs configure
" =============================
" let g:nerdtree_tabs_open_on_console_startup=1
" let g:nerdtree_tabs_open_on_gui_startup=1
" map <Leader>, <plug>NERDTreeTabsToggle<CR>

"==============================
" Ack configure
" =============================
nmap <leader>a :tab split<CR>:Ack ""<left>
nmap <leader>A :tab split<CR>:Ack <C-r><C-w><CR>
let g:ackprg = 'ag --nogroup --nocolor --column'

"==============================
" CtrlP configure
" =============================
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'
map <leader>p :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm|node_modules)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

nnoremap <Leader>i :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>I :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1

let g:ctrlp_extensions = ['funky']

"==============================
" Powerline configure
" =============================
" set laststatus=2
" let g:Powerline_symbols='unicode'

"==============================
" Airline configure
" =============================
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airlien#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1 
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme = 'bubblegum'
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
" 映射<leader>num到num buffer
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>


"==============================
" Backup configure
" =============================
set nobackup
set nowb
set noswapfile
set noundofile

"==============================
" EasyMotinon configure
" =============================
let g:EasyMotion_leader_key=','

"==============================
" CtrlSF configure
" =============================
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_winsize = '40%'
nmap <leader>s :tab split<CR>:CtrlSF ""<left>

"==============================
" Syntastic configure
" =============================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
map <leader>l :lopen<CR>
map <leader>L :lclose<CR>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'
let g:syntastic_disabled_filetypes=['html']
" let g:syntastic_debug = 3

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '👉'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

"=============================
" undotree configure
"=============================
if has("persistent_undo")
  set undodir=~/.undodir/
  set undofile
endif
nnoremap <F5> :UndotreeToggle<cr>

"=============================
" easy-align configure
"=============================
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"=============================
" delimitMate configure
" auto indent wrap
"=============================


"=============================
" vim-javascript configure
"=============================
let g:javascript_plugin_jsdoc = 1

"=============================
" vim-expand-region configure
"=============================
map <leader>k <Plug>(expand_region_expand)
map <leader>j <Plug>(expand_region_shrink)
