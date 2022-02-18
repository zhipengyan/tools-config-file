
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
set clipboard=unnamedplus
set hidden
set number "显示行号
set ignorecase smartcase " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set cursorline " 突出显示当前行
" set cursorline cursorcolumn
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
au BufNewFile,BufRead Jenkinsfile setf groovy
" Backup configure
set nobackup
set nowb
set noswapfile
set noundofile
set nowritebackup
set t_Co=256
set foldmethod=syntax
set foldlevel=10
" 一些性能优化
set updatetime=300
" set my leader
let mapleader = ' '
let g:mapleader = ' '
" Preserve indentation while pasting text from the OS X clipboard 在粘贴OS
" X剪贴板中的文本时保留缩进
noremap <leader>p :set paste<CR>:put *<CR>:set nopaste<CR>
" set autochdir " 自动切换工作目录
" Yank text to the OS X clipboard" 将文本复制到OS X剪贴板中
noremap <leader>y "*y
noremap <leader>yy "*Y
inoremap jk <esc>
cnoremap jk <esc>
inoremap <esc> <nop>
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
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
  autocmd FileType Jenkinsfile setlocal ts=4 sts=4 sw=4 expandtab
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
Plug 'joshdick/onedark.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'sainnhe/sonokai'
Plug 'pineapplegiant/spaceduck'
Plug 'sainnhe/everforest'
Plug 'arcticicestudio/nord-vim'

" 代码目录
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" 目录高亮
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on':  'NERDTreeToggle' }
" 文件图标
Plug 'ryanoasis/vim-devicons'
" 首屏导航
Plug 'mhinz/vim-startify'
" 状态栏
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
" Plug 'ap/vim-buftabline'
Plug 'mengelbrecht/lightline-bufferline'
" 文件快速导航
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" 全文搜索工具
Plug 'rking/ag.vim'
" 异步进程管理
Plug 'roxma/nvim-yarp'
" 语言服务器
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" floaterm
Plug 'voldikss/vim-floaterm'
Plug 'ptzz/lf.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'mcchrish/nnn.vim'
Plug 'dylanaraps/fff.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }

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
" 选区复制后高亮
Plug 'machakann/vim-highlightedyank'
" 自动分行
Plug 'AndrewRadev/splitjoin.vim'
" prettier
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'sbdchd/neoformat'
" 写作工具
Plug 'junegunn/goyo.vim'
" 跳转工具
" Plug 'justinmk/vim-sneak'
" 定位工具
Plug 'unblevable/quick-scope'
" 颜色显示
Plug 'norcalli/nvim-colorizer.lua'

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
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" styled-components 语法支持
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" rust
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
" jenkins
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'vim-scripts/groovyindent-unix'
" vue
Plug 'posva/vim-vue'
" ================================ 语言类型支持结束 ======================================

" 生成代码截图
Plug 'kristijanhusak/vim-carbon-now-sh'
" 统计写代码时长
" Plug 'wakatime/vim-wakatime'
" MD 生成 Slide
Plug 'dhruvasagar/vim-marp'
" 高亮选中的相同内容
Plug 'RRethy/vim-illuminate'
Plug 'alvan/vim-closetag'
Plug 'tmhedberg/simpylfold'

call plug#end()




" =====================================================================================
" ================================== 插件设置开始 =======================================
" =====================================================================================

" =============================
" 设置配色方案
" =============================
set termguicolors
" colorscheme PaperColor
" colorscheme OceanicNext
" colorscheme onedark
" let ayucolor="dark" " for mirage version of theme
" colorscheme ayu
" colorscheme onehalfdark
" colorscheme spaceduck
" colorscheme everforest
colorscheme nord
if has('gui_running')
	set background=dark
elseif has('nvim')
	set background=dark
else
  colorscheme seti
endif
" =============================
" floaterm configure
"
" =============================
" 禁用 nnn 的默认映射
let g:nnn#set_default_mappings = 0
" 禁用 lf 的默认映射
let g:lf_map_keys = 0
" 禁用 ranger 的默认映射
let g:ranger_map_keys = 0
" let g:floaterm_wintype = 'vsplit'
let g:floaterm_width = 1.0
let g:floaterm_height = 1.0
let g:floaterm_opener = 'edit'
hi FloatermBorder guibg=NONE guifg=orange
map <leader><leader> :FloatermNew nnn -H<CR>
map <leader>n :FloatermNew nnn -H %:p:h<CR>
map <leader>f :FloatermNew fzf<CR>
map <leader>b :Buffers<CR>
map <leader>c :FloatermNew<CR>
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
" map <leader><leader> :NERDTreeToggle<CR>
" map <leader>n :NERDTreeFind<CR>
" =============================
" NerdTree highlight configure
" https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
" =============================
let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['ts'] = '4B9AD6'
" ============================
" devicons
" https://github.com/ryanoasis/vim-devicons
"=============================
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_tabs = 1
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
" lineline configure
" https://github.com/itchyny/lightline.vim
" =============================
set showtabline=2
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ [] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filename': 'LightlineFilename',
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ },
      \ }
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#unicode_symbols = 1
let g:lightline#bufferline#show_number = 2
" let g:lightline#bufferline#number_map = {
" \ 0: '⁰', 1: '¹', 2: '²', 3: '³', 4: '⁴',
" \ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'}
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
nmap <Leader>d1 <Plug>lightline#bufferline#delete(1)
nmap <Leader>d2 <Plug>lightline#bufferline#delete(2)
nmap <Leader>d3 <Plug>lightline#bufferline#delete(3)
nmap <Leader>d4 <Plug>lightline#bufferline#delete(4)
nmap <Leader>d5 <Plug>lightline#bufferline#delete(5)
nmap <Leader>d6 <Plug>lightline#bufferline#delete(6)
nmap <Leader>d7 <Plug>lightline#bufferline#delete(7)
nmap <Leader>d8 <Plug>lightline#bufferline#delete(8)
nmap <Leader>d9 <Plug>lightline#bufferline#delete(9)
nmap <Leader>d0 <Plug>lightline#bufferline#delete(10)
" let g:lightline#bufferline#enable_nerdfont = 1
function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction
" =============================
" Airline configure
" https://github.com/vim-airline/vim-airline
" =============================
set laststatus=1
" let g:airline_theme = 'base16'
" let g:airline_theme = 'oceanicnext'
let g:airline_theme = 'onedark'
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
nmap <leader>/ :tab split<CR>:Rg  <left>
nmap <leader>A :tab split<CR>:Rg <C-r><C-w><CR>
let g:ag_prg = 'rg --line-number --vimgrep --column --smart-case --colors "line:style:bold" --hidden --follow --glob "!.git/*"'
let g:ag_working_path_mode="r"
let g:ag_highlight=1
" =============================
" coc.vim configure
" https://github.com/neoclide/coc.nvim
" =============================
" tab 键切换补全的选项
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" nnoremap <silent> <space>f  :<C-u>CocList files<cr>
" nnoremap <silent> <space>b  :<C-u>CocList buffers<cr>
nnoremap <silent> <space>g  :<C-u>CocList grep<cr>
nnoremap <silent> <space>w  :<C-u>CocList words<cr>
nnoremap <silent> <space>r  :<C-u>CocListResume<cr>

" =============================
" EasyMotinon configure
" =============================
let g:EasyMotion_leader_key=','
"=============================
" vim-carbon-now-sh
" https://github.com/kristijanhusak/vim-carbon-now-sh
"=============================
vnoremap <F5> :CarbonNowSh<CR>

" =============================
" sneak configure
" https://github.com/justinmk/vim-sneak
" =============================
map f <Plug>Sneak_s
map F <Plug>Sneak_S
let g:sneak#label = 1
" =============================
" Neoformat configure
" =============================
let g:neoformat_javascript_eslint = { 'exe': 'eslint' }
let g:neoformat_enabled_javascript = ['eslint']
let g:neoformat_typescript_eslint = { 'exe': 'eslint' }
let g:neoformat_enabled_typescript = ['eslint']
let g:neoformat_javascriptreact_eslint = { 'exe': 'eslint' }
let g:neoformat_enabled_javascriptreact = ['eslint']
let g:neoformat_typescriptreact_eslint = { 'exe': 'eslint' }
let g:neoformat_enabled_typescriptreact = ['eslint']
autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat
nmap -- :Neoformat prettier<CR>

command! PP !npx prettier --write %

" =============================
" simpylfold configure
" =============================
let g:SimpylFold_docstring_preview = 1
