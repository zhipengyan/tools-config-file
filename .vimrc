set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable

let g:python_host_skip_check=1
let g:python3_host_skip_check=1
let g:python_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'

call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs'
" colors
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'gilgigilgil/anderson.vim'
Plug 'w0ng/vim-hybrid'
Plug 'daylerees/colour-schemes', {'rtp': 'vim/'}
Plug 'trusktr/seti.vim'
Plug 'dracula/vim'
Plug 'cocopon/iceberg.vim'
Plug 'morhetz/gruvbox'

" from github
" for typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'ianks/vim-tsx'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Quramy/tsuquyomi'
" for typescript end
" es6 an es7 syntax
Plug 'othree/yajs.vim'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-surround'
" suojin level xianshi 
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mattn/emmet-vim'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'othree/tern_for_vim_coffee' " 实现coffee的js代码补全
Plug 'Lokaltog/vim-powerline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lokaltog/vim-easymotion'
"Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'mileszs/ack.vim' " use ag replaced
Plug 'rking/ag.vim'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'JulesWang/css.vim' " only necessary if your Vim version < 7.4
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
" Plug 'isRuslan/vim-es6'
" Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'mbbill/undotree'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-pathogen'
" Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
" Plug 'idbrii/AsyncCommand'
" Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Plug 'jeetsukumaran/vim-buffergator'
" Plug 'mihaifm/bufstop'
Plug 'wavded/vim-stylus'
" 符号自动补全
Plug 'Raimondi/delimitMate'
Plug 'ternjs/tern_for_vim'
Plug 'tpope/vim-commentary'
Plug 'terryma/vim-expand-region'
Plug 'qpkorr/vim-bufkill'
" fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'majutsushi/tagbar'
Plug 'ryanoasis/vim-devicons'
" git
Plug 'mhinz/vim-signify'
" start screen
Plug 'mhinz/vim-startify'
" php
Plug 'StanAngeloff/php.vim'
" fold
Plug 'Konfekt/FastFold'
" https://github.com/tpope/vim-eunuch SudoWrite
Plug 'tpope/vim-eunuch'
" https://github.com/iamcco/markdown-preview.nvim
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install', 'for': 'markdown' }
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'romainl/ctags-patterns-for-javascript', { 'dir': '$HOME/.ctags-patterns-for-javascript', 'do': 'make tags && echo \"--options=$HOME/.ctags-patterns-for-javascript/ctagsrc\" >> ~/.ctags' }
Plug 'ludovicchabant/vim-gutentags'
Plug 'wakatime/vim-wakatime'

call plug#end()
filetype plugin indent on    " required
execute pathogen#infect()

" 中文乱码问题
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" set guifont=Source\ Code\ Pro:h13
" set guifont=Input\ Mono:h13
" set guifont=Fantasque\ Sans\ Mono:h15
if has('gui_running')
  set guifont=Hack\ Nerd\ Font:h13
endif
"set guifont=Source\ Code\ Pro:h13
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
set smartindent
set autoindent
" 针对不同文件设置缩进量
if has("autocmd")
  autocmd FileType php set noexpandtab
	autocmd FileType javascript,typescript,coffee setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType html,ejs,jst,xml,tpl setlocal ts=4 sts=4 sw=4 expandtab
	autocmd FileType scss,css setlocal ts=2 sts=2 sw=2 expandtab iskeyword+=-
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
" colorscheme solarized
" colorscheme dracula
colorscheme iceberg
" colorscheme gruvbox
if has('gui_running')
	set background=dark
elseif has('nvim')
  set termguicolors
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
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$']
map <leader><leader> :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<CR>

"==============================
" NerdTreeTabs configure
" =============================
" let g:nerdtree_tabs_open_on_console_startup=1
" let g:nerdtree_tabs_open_on_gui_startup=1
" map <Leader>, <plug>NERDTreeTabsToggle<CR>


" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
nnoremap <leader>p :GFiles<cr>

"==============================
" Ack configure
" =============================
" nmap <leader>/ :tab split<CR>:Ack ""<left>
" nmap <leader>A :tab split<CR>:Ack <C-r><C-w><CR>
" let g:ackprg = 'rg --line-number --column --ignore-case --hidden --follow --glob "!.git/*" --color'
"" let g:ackprg = 'ag --nogroup --nocolor --column'

"==============================
" Ag configure
" =============================
nmap <leader>/ :tab split<CR>:Ag ""<left>
nmap <leader>A :tab split<CR>:Ag <C-r><C-w><CR>
let g:ag_prg = 'rg --line-number --vimgrep --column --smart-case --colors "line:style:bold" --hidden --follow --glob "!.git/*"'
let g:ag_working_path_mode="r"
let g:ag_highlight=1

"==============================
" Powerline configure
" =============================
" set laststatus=2
" let g:Powerline_symbols='unicode'

"==============================
" Airline configure
" =============================
set laststatus=1
let g:airline#extensions#tabline#enabled = 1
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
" let g:airline_theme = 'bubblegum'
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
set nowritebackup

"==============================
" EasyMotinon configure
" =============================
let g:EasyMotion_leader_key=','

"==============================
" Syntastic configure
" =============================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
map <leader>l :lopen<CR>
map <leader>L :lclose<CR>

" if has("autocmd")
"   autocmd FileType javascript let b:syntatic_checkers = ['eslint']
" endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_eslint_exec = 'node_modules/.bin/eslint'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_tslint_exec = 'node_modules/.bin/tslint'
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_typescriptreact_tslint_exec = 'node_modules/.bin/tslint'
let g:syntastic_typescriptreact_checkers = ['tslint']
let g:syntastic_disabled_filetypes=['html']
" let g:syntastic_debug = 3

let g:syntastic_error_symbol = '💥'
let g:syntastic_warning_symbol = '🔅'
let g:syntastic_style_error_symbol = '😡'
let g:syntastic_style_warning_symbol = '😯'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

"=============================
" ale configure
"=============================
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\   'typescriptreact': ['tslint'],
\}
let g:ale_sign_error = '💥'
let g:ale_sign_warning = '🔅'
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_enter = 0
let g:airline#extensions#ale#enabled = 1

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
let delimitMate_expand_cr = 1

"=============================
" vim-javascript configure
"=============================
let g:javascript_plugin_jsdoc = 1

"=============================
" vim-expand-region configure
"=============================
map <leader>k <Plug>(expand_region_expand)
map <leader>j <Plug>(expand_region_shrink)


"=============================
" typescript configure
"=============================
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
autocmd FileType typescript setlocal completeopt+=menu,preview
let g:tsuquyomi_completion_detail = 1
let g:typescript_indent_disable = 1


"=============================
" switch to last buffer
"=============================
nnoremap <c-6> :bp<cr>

"=============================
" buffer
"=============================
map <leader>b :Buffers<CR>

"=============================
" js-beautify
"=============================
map <c-f> :call JsBeautify()<cr>

"=============================
" tagbar
"=============================
nmap <leader>t :TagbarToggle<CR>

"=============================
" devicons
"=============================
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
let g:airline_powerline_fonts = 1

"=============================
" startify
"=============================
nmap <leader>h :Startify<CR>
let g:startify_session_dir = '~/.vim/session'
let g:startify_bookmarks = [
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

"=============================
" FastFold
"=============================
" 使用语法高亮定义代码折叠
set foldmethod=syntax
" 打开文件是默认不折叠代码
set foldlevelstart=99
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1

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
autocmd CursorHold * silent call CocActionAsync('highlight')

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

"=============================
" markdown-preview.nvim
" https://github.com/iamcco/markdown-preview.nvim
"=============================
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 1
let g:mkdp_open_to_the_world = 1

"=============================
" vim-carbon-now-sh
" https://github.com/kristijanhusak/vim-carbon-now-sh
"=============================
vnoremap <F5> :CarbonNowSh<CR>

"=============================
" CTags
"=============================
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
