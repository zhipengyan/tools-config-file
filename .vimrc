
" =====================================================================================
" ================================== 基本设置开始 =======================================
" =====================================================================================
set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable

let g:python_host_skip_check=1
let g:python3_host_skip_check=1
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

" 中文乱码问题
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
" 共享系统剪贴板
set clipboard=unnamed
set number "显示行号
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set cursorline " 突出显示当前行
set lazyredraw " 提高滚动速度
set ruler " 打开状态栏标尺
set shiftwidth=2 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=2 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=2 " 设定 tab 长度为 4
set expandtab "设定使用空格代替制表符 用制表符使用noexpandtab
set smartindent
" 自动读取本地变更
set autoread
set autoindent
au CursorHold * checktime 
set cursorline cursorcolumn
" Backup configure
set nobackup
set nowb
set noswapfile
set noundofile
set nowritebackup
" set autochdir " 自动切换工作目录
" Yank text to the OS X clipboard" 将文本复制到OS X剪贴板中
noremap <leader>y "*y
noremap <leader>yy "*Y
"  
" Preserve indentation while pasting text from the OS X clipboard 在粘贴OS
" X剪贴板中的文本时保留缩进
noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>
" set my leader
let mapleader = ' '
let g:mapleader = ' '
" =====================================================================================
" ================================== 基本设置结束 =======================================
" =====================================================================================



" =====================================================================================
" ================================== 高级设置开始 =======================================
" =====================================================================================
" 针对不同文件设置缩进量
if has("autocmd")
  autocmd FileType php set noexpandtab
	autocmd FileType javascript,typescript,typescriptreact,coffee setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType html,ejs,jst,xml,tpl setlocal ts=4 sts=4 sw=4 expandtab
	autocmd FileType scss,css setlocal ts=2 sts=2 sw=2 expandtab iskeyword+=-
  autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
  autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
endif

" 设置字体字号
if (!empty($NVIM_GUI))
  set guifont=Source\ Code\ Pro:h12
endif
if has('gui_running')
  " set guifont=Source\ Code\ Pro:h13
  " set guifont=Input\ Mono:h13
  " set guifont=Fantasque\ Sans\ Mono:h15
  set guifont=Hack\ Nerd\ Font:h13
endif
" 跳转到上一个打开的 buffer
nnoremap <c-6> :bp<cr>
" 打开 buffer 列表
map <leader>b :Buffers<CR>
filetype plugin indent on    " required
" =====================================================================================
" ================================== 高级设置结束 =======================================
" =====================================================================================


call plug#begin('~/.vim/plugged')

" 一些 vim 的通用配置简单设置
" https://github.com/tpope/vim-sensible
Plug 'tpope/vim-sensible'

" 配色方案
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'gilgigilgil/anderson.vim'
Plug 'w0ng/vim-hybrid'
Plug 'trusktr/seti.vim'
Plug 'dracula/vim'
Plug 'cocopon/iceberg.vim'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jacoborus/tender.vim'
Plug 'KKPMW/sacredforest-vim'
Plug 'sainnhe/vim-color-forest-night'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'chriskempson/base16-vim'
Plug 'mhartington/oceanic-next'
Plug 'flazz/vim-colorschemes'

" 代码目录
Plug 'scrooloose/nerdtree'
" 文件图标
Plug 'ryanoasis/vim-devicons'
" 首屏导航
Plug 'mhinz/vim-startify'
" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 文件快速导航
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" 全文搜索工具
Plug 'rking/ag.vim'
" lint 工具
Plug 'dense-analysis/ale'
" 自动补全
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-tern', {'do': 'npm install'}
Plug 'ncm2/ncm2-vim'
" 异步进程管理，配合 ncm2
Plug 'roxma/nvim-yarp'

" 符号自动补全
Plug 'Raimondi/delimitMate'
" 注释工具
Plug 'tpope/vim-commentary'
" git 工具集
Plug 'tpope/vim-fugitive'
" https://github.com/tpope/vim-eunuch SudoWrite Delete Chmod
Plug 'tpope/vim-eunuch'
" 两边补齐符号
Plug 'tpope/vim-surround'
" 快速定位
Plug 'Lokaltog/vim-easymotion'
" 选区助手
Plug 'terryma/vim-expand-region'

" ================================= 语言类型支持开始 =====================================
" javascript 语言相关
Plug 'pangloss/vim-javascript'
" jsx 语法
Plug 'maxmellon/vim-jsx-pretty'
" es6 es7 syntax
" Plug 'othree/yajs.vim'

" stylus scss 变种
Plug 'wavded/vim-stylus'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'cakebaker/scss-syntax.vim'

Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
" typescript
Plug 'leafgarland/typescript-vim'
" typescript 高亮
Plug 'HerringtonDarkholme/yats.vim'
" typescript lsp 支持
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" styled-components 语法支持
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" ================================ 语言类型支持结束 ======================================

" 生成代码截图
" Plug 'kristijanhusak/vim-carbon-now-sh'
" 统计写代码时长
" Plug 'wakatime/vim-wakatime'

call plug#end()




" =====================================================================================
" ================================== 插件设置开始 =======================================
" =====================================================================================

" =============================
" 设置配色方案
" =============================
set termguicolors
colorscheme OceanicNext
if has('gui_running')
	set background=dark
elseif has('nvim')
	set background=dark
else
  colorscheme seti
endif
" =============================
" NerdTree configure
" https://github.com/scrooloose/nerdtree
" =============================
let NERDTreeQuitOnOpen = 1
let NERDChristmasTree = 1
let g:NERDTreeWinSize = 40
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
map <leader><leader> :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<CR>
" ============================
" devicons
" https://github.com/ryanoasis/vim-devicons
"=============================
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:airline_powerline_fonts = 1
" ============================
" startify
" https://github.com/mhinz/vim-startify
"=============================
nmap <leader>h :Startify<CR>
let g:startify_session_dir = '~/.vim/session'
let g:startify_bookmarks = [
  \ '~/Code/personal/yunduo/package.json',
  \ '~/Code/shimo/shark/package.json',
  \ '~/code/shimo/eagle-develop/package.json',
  \ '~/Code/shimo/docs-straight-out/docs2html/package.json',
  \ '~/Code/shimo/svc-docssr/package.json',
  \ '~/Code/personal/docs-debugger/package.json',
  \ '~/Code/shimo/doc-doctor/package.json',
  \ '~/.vimrc',
  \ ]
let g:startify_lists = [
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'files',     'header': ['   MRU']            },
  \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
  \ ]
" =============================
" Airline configure
" https://github.com/vim-airline/vim-airline
" =============================
set laststatus=1
" let g:airline_theme = 'base16'
let g:airline_theme = 'oceanicnext'
if (empty($NVIM_GUI))
  let g:airline#extensions#tabline#enabled = 1
endif
let g:airline#extensions#tabline#left_sep = ' '
let g:airlien#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#tab_nr_type = 0 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_powerline_fonts = 1 
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
" =============================
" fzf configure
" https://github.com/junegunn/fzf.vim
" https://github.com/junegunn/fzf
" =============================
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
nnoremap <leader>p :GFiles<cr>
" =============================
" Ag configure
" =============================
nmap <leader>/ :tab split<CR>:Ag ""<left>
nmap <leader>A :tab split<CR>:Ag <C-r><C-w><CR>
let g:ag_prg = 'rg --line-number --vimgrep --column --smart-case --colors "line:style:bold" --hidden --follow --glob "!.git/*"'
let g:ag_working_path_mode="r"
let g:ag_highlight=1
" =============================
" Ale
" https://github.com/dense-analysis/ale
" =============================
let g:ale_completion_tsserver_autoimport = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_list_window_size = 5
let b:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'javascriptreact': ['eslint'],
  \ 'javascript.jsx': ['eslint'],
  \ 'typescript': ['eslint'],
  \ 'typescriptreact': ['eslint'],
  \ 'typescript.tsx': ['eslint']
  \ }
nmap <leader>d :ALEGoToDefinition<CR>
" =============================
" ncm2 configure
" https://github.com/ncm2/ncm2
" =============================
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" =============================
" EasyMotinon configure
" =============================
let g:EasyMotion_leader_key=','
"=============================
" vim-carbon-now-sh
" https://github.com/kristijanhusak/vim-carbon-now-sh
"=============================
vnoremap <F5> :CarbonNowSh<CR>
