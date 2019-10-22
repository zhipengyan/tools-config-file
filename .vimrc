
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
set autoread
set autoindent " 自动读取本地变更
au CursorHold * checktime 
set cursorline cursorcolumn
" Backup configure
set nobackup
set nowb
set noswapfile
set noundofile
set nowritebackup
set autochdir " 自动切换工作目录
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
	autocmd FileType javascript,typescript,coffee setlocal ts=2 sts=2 sw=2 expandtab
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
" lsp 远程语言服务
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
" EasyMotinon configure
" =============================
let g:EasyMotion_leader_key=','
"=============================
" vim-carbon-now-sh
" https://github.com/kristijanhusak/vim-carbon-now-sh
"=============================
vnoremap <F5> :CarbonNowSh<CR>

"=============================
" coc.nvim
" https://github.com/neoclide/coc.nvim
"=============================
" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" coc extensions
let g:coc_global_extensions = ['coc-eslint', 'coc-tsserver', 'coc-git']

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
" autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }



" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
