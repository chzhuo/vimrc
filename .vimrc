" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 搜索时大小写不敏感
set ignorecase

set laststatus=2
" 显示光标当前位置
set ruler
 " 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
" set cursorcolumn

" 高亮显示搜索结果
set hlsearch

" 禁止折行
set nowrap

" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $

" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC




" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on


" 自适应不同语言的智能缩进
 filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4



" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" window导航
nnoremap <Leader>wh <C-w>h
nnoremap <Leader>wj <C-w>j
nnoremap <Leader>wk <C-w>k
nnoremap <Leader>wl <C-w>l

" 页面内翻页
nnoremap <Leader>fj <C-f>
nnoremap <Leader>fk <C-b>

" 快速编辑.vimrc文件
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" 给单词加冒号
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'kshenoy/vim-signature'
Plugin 'lepture/vim-velocity'
" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
" Plugin 'scrooloose/syntastic'
call vundle#end()

" ===========================================scrooloose/nerdtree
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fo :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 进入vim就打开NERDTree
" autocmd vimenter * NERDTree

" ==========================================nathanaelkane/vim-indent-guides
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" ===========================================derekwyatt/vim-fswitch
" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>

" ===========================================kshenoy/vim-signature
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

" ===========================================fholgado/minibufexpl.vim
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bo :MBEToggle<cr>
" buffer 切换快捷键
map <leader>fl :MBEbn<cr>
map <leader>fh :MBEbp<cr>

" ===========================================scrooloose/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
