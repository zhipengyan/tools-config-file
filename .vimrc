set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
" colors
Plugin 'altercation/vim-colors-solarized'

Plugin 'ctrlp.vim'
" from github
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-surround'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mattn/emmet-vim'
Plugin 'yonchu/accelerated-smooth-scroll'
"只在MacVim下加载该YCM，因为内建vim版本太低不支持
"if has('gui_running') 
Plugin 'Valloric/YouCompleteMe'
"endif
" tern support coffee
" http://blog.blackbing.net/post/2014/02/10/vim-ternjs-youcompleteme/
Plugin 'marijnh/tern_for_vim' " 配合YCM满足js的代码补全
Plugin 'othree/tern_for_vim_coffee' " 实现coffee的js代码补全
" Plugin 'scrooloose/syntastic' " 代码纠错
Plugin 'Lokaltog/vim-powerline'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set guifont=Source\ Code\ Pro:h10
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
	autocmd FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType coffee setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab
	autocmd FileType xml setlocal ts=4 sts=4 sw=4 expandtab
	autocmd FileType scss setlocal ts=4 sts=4 sw=4 expandtab
	autocmd FileType css setlocal ts=4 sts=4 sw=4 expandtab
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
syntax enable
colorscheme solarized
if has('gui_running')
	"set background=light"设置为浅色
	set background=light
else
	set background=light
endif
let g:solarized_termcolors=256

"设置输入法切换
set noimdisable
autocmd! InsertLeave * set imdisable|set iminsert=0
autocmd! InsertEnter * set noimdisable|set iminsert=0

"==============================
" set my leader
" =============================
let mapleader=","
let g:mapleader=","

"==============================
" NerdTree configure
" =============================
let NERDTreeQuitOnOpen = 1
let NERDChristmasTree = 1
let g:NERDTreeWinSize = 25
map <leader>n :NERDTreeToggle<CR>

"==============================
" NerdTreeTabs configure
" =============================
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_open_on_gui_startup=1
map <Leader>, <plug>NERDTreeTabsToggle<CR>

"==============================
" Ack configure
" =============================
nmap <leader>a :tab split<CR>:Ack ""<left>
nmap <leader>A :tab split<CR>:Ack <C-r><C-w><CR>
let g:ackprg = 'ag --nogroup --nocolor --column'

"==============================
" CtrlP configure
" =============================
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
"use in  edit
imap <C-A> <C-C><c-p>
"use in none edit
:map <leader>t <c-p>
:map <leader>b :CtrlPBuffer<CR>

"==============================
" Powerline configure
" =============================
set laststatus=2
let g:Powerline_symbols='unicode'

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
let g:EasyMotion_leader_key='<Space>'

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
nmap <leader>f :tab split<CR>:CtrlSF ""<left>

"==============================
" Syntastic configure
" =============================
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
