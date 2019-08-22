"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"          ___      __    __  .___________. __    __   _______ .______
"         /   \    |  |  |  | |           ||  |  |  | |   ____||   _  \
"        /  ^  \   |  |  |  | `---|  |----`|  |__|  | |  |__   |  |_)  |
"       /  /_\  \  |  |  |  |     |  |     |   __   | |   __|  |      /
"      /  _____  \ |  `--'  |     |  |     |  |  |  | |  |____ |  |\  \----.
"     /__/     \__\ \______/      |__|     |__|  |__| |_______|| _| `._____|
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"    Vim configuration file.
"
"    Copyright (c) 2010 liushaobo All Rights Reserved.
"
"    Maintainer: liushaobo <13838130517@163.com>
"    Created: 2018-01-01
"    LastChange: 2019-08-20
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"      ______   ______   .__   __.  _______  __    _______
"     /      | /  __  \  |  \ |  | |   ____||  |  /  _____|
"    |  ,----'|  |  |  | |   \|  | |  |__   |  | |  |  __
"    |  |     |  |  |  | |  . `  | |   __|  |  | |  | |_ |
"    |  `----.|  `--'  | |  |\   | |  |     |  | |  |__| |
"     \______| \______/  |__| \__| |__|     |__|  \______|
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" 设置 vimrc 修改保存后立刻生效，不用在重新打开
" 建议配置完成后将这个关闭，否则配置多了之后会很卡
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 关闭兼容模式
set nocompatible

set number " 设置绝对行号
" set relativenumber " 设置相对行号
set cursorline "突出显示当前行
" set cursorcolumn " 突出显示当前列
set showmatch " 显示括号匹配

" tab 缩进
set tabstop=4 " 设置Tab长度为4空格
set shiftwidth=4 " 设置自动缩进长度为4空格
set autoindent " 继承前一行的缩进方式，适用于多行注释

" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" 自定义快捷键

" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <M-c> "+yy
" n 模式下复制一行到系统剪切板
nmap <M-c> "+yy
" n 模式下粘贴系统剪切板的内容
nmap <M-v> "+p

" 修改默认的区域切换如ctrl+w+h 奇幻到左侧， 依次是 左右上下
nmap <M-h> <C-w>h
nmap <M-l> <C-w>l
nmap <M-k> <C-w>k
nmap <M-j> <C-w>j
" 作用和上面一样，只不过是使用的 Leader
nmap <Leader>h <C-w>h
nmap <Leader>l <C-w>l
nmap <Leader>k <C-w>k
nmap <Leader>j <C-w>j

nmap <Leader>nu :set relativenumber<CR>
nmap <Leader>nn :set norelativenumber<CR>

"开启实时搜索
set incsearch
" 搜索时大小写不敏感
set ignorecase
syntax enable
syntax on                    " 开启文件类型侦测
filetype plugin indent on    " 启用自动补全

" 退出插入模式指定类型的文件自动保存
au InsertLeave *.go,*.sh,*.php write

"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"    .______    __       __    __    _______
"    |   _  \  |  |     |  |  |  |  /  _____|
"    |  |_)  | |  |     |  |  |  | |  |  __
"    |   ___/  |  |     |  |  |  | |  | |_ |
"    |  |      |  `----.|  `--'  | |  |__| |
"    | _|      |_______| \______/   \______|
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" 插件开始的位置
call plug#begin('~/.vim/plugged')

" Vim 中文文档
" Plug 'yianwillis/vimcdoc'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" 可以快速对齐的插件
Plug 'junegunn/vim-easy-align'

" 用来提供一个导航目录的侧边栏
Plug 'scrooloose/nerdtree'

" 可以使 nerdtree Tab 标签的名称更友好些
Plug 'jistr/vim-nerdtree-tabs'

" 可以在导航目录中看到 git 版本信息
Plug 'Xuyuanp/nerdtree-git-plugin'

" 查看当前代码文件中的变量和函数列表的插件，
" 可以切换和跳转到代码中对应的变量和函数的位置
" 大纲式导航, Go 需要 https://github.com/jstemmer/gotags 支持
Plug 'majutsushi/tagbar'
Plug 'jstemmer/gotags'

" 自动补全括号的插件，包括小括号，中括号，以及花括号
Plug 'jiangmiao/auto-pairs'

" 文件快速查找
Plug 'kien/ctrlp.vim'

" Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
Plug 'vim-airline/vim-airline'

" 有道词典在线翻译
" Plug 'ianva/vim-youdao-translater'

" 代码自动完成，安装完插件还需要额外配置才可以使用
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --go-completer' }

"
" 可以在文档中显示 git 信息
Plug 'airblade/vim-gitgutter'


" 下面两个插件要配合使用，可以自动生成代码块
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" 配色方案
" colorscheme gruvbox
Plug 'morhetz/gruvbox'
" colorscheme one
Plug 'rakr/vim-one'
Plug 'altercation/vim-colors-solarized'

" go 主要插件
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" go 中的代码追踪，输入 gd 就可以自动跳转
Plug 'dgryski/vim-godef'

" markdown 插件
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" 自动生成注释的插件
Plug 'scrooloose/nerdcommenter'

" 插件结束的位置，插件全部放在此行上面
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    .___________. __    __   _______ .___  ___.  _______
"    |           ||  |  |  | |   ____||   \/   | |   ____|
"    `---|  |----`|  |__|  | |  |__   |  \  /  | |  |__
"        |  |     |   __   | |   __|  |  |\/|  | |   __|
"        |  |     |  |  |  | |  |____ |  |  |  | |  |____
"        |__|     |__|  |__| |_______||__|  |__| |_______|
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 开启24bit的颜色，开启这个颜色会更漂亮一些
set termguicolors
" 配色方案, 可以从上面插件安装中的选择一个使用
colorscheme gruvbox " gruvbox " 主题
" colorscheme solarized " 主题
" colorscheme one " 主题
set background=light " 主题背景 dark-深色; light-浅色


"==============================================================================
" vim-go 插件
"==============================================================================
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split=2

" 直接通过 go run 执行当前文件
" :GoRun
autocmd FileType go nmap <leader>r :GoRun %<CR>

" :GoBuild
autocmd FileType go nmap <leader>b :GoBuild %<CR>

" :GoTest
autocmd FileType go nmap <leader>t :GoTest %<CR>

" :GoDoc
autocmd FileType go nmap <Leader>d :GoDoc %<CR>

"==============================================================================
" NERDTree 插件
"==============================================================================

" 打开和关闭NERDTree快捷键
nmap <F2> :NERDTreeToggle<cr>
nmap <F3> :TlistToggle<cr>
nmap <M-m> :NERDTreeFind<CR>

" 显示行号
let NERDTreeShowLineNumbers=1
" 打开文件时是否显示目录
let NERDTreeAutoCenter=0
" 是否显示隐藏文件
let NERDTreeShowHidden=0
" 设置宽度
" let NERDTreeWinSize=31
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 打开 vim 文件及显示书签列表
let NERDTreeShowBookmarks=2

" 在终端启动vim时，共享NERDTree
" let g:nerdtree_tabs_open_on_console_startup=1

"==============================================================================
"  majutsushi/tagbar 插件
"==============================================================================

" majutsushi/tagbar 插件打开关闭快捷键
nmap <F9> :TagbarToggle<CR>

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

"==============================================================================
"  nerdtree-git-plugin 插件
"==============================================================================
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeShowIgnoredStatus = 1
nmap <Leader>pwd :NERDTreeCWD<CR>



"==============================================================================
"  Valloric/YouCompleteMe 插件
"==============================================================================

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<M-j>', '<DOWN>']
let g:ycm_key_list_previous_completion = ['<M-k>', '<Up>']
let g:SuperTabDefaultCompletionType = '<M-j>'

" 关闭了提示再次触发的快捷键
"let g:ycm_key_invoke_completion = '<Leader>,'

"==============================================================================
" UltiSnips 插件
"==============================================================================
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"==============================================================================
"  其他插件配置
"==============================================================================

" markdwon 的快捷键
map <silent> <F5> <Plug>MarkdownPreview
map <silent> <F6> <Plug>StopMarkdownPreview

" tab 标签页切换快捷键
:nn <Leader>1 1gt
:nn <Leader>2 2gt
:nn <Leader>3 3gt
:nn <Leader>4 4gt
:nn <Leader>5 5gt
:nn <Leader>6 6gt
:nn <Leader>7 7gt
:nn <Leader>8 8gt
:nn <Leader>9 8gt
:nn <Leader>0 :tablast<CR>

" 自动注释的时候添加空格
let g:NERDSpaceDelims=1

" 有道词典插件
map <M-t> :Ydc<CR>

" 自动切换到当前文件所在的目录 cdpath
map <Leader>cd :cd %:h<CR>


"==============================================================================
" 光标随着插入模式改变形状
" 参考： https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
"==============================================================================
if has("autocmd")
	au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
	au InsertEnter,InsertChange *
		\ if v:insertmode == 'i' |
		\   silent execute '!echo -ne "\e[6 q"' | redraw! |
		\ elseif v:insertmode == 'r' |
		\   silent execute '!echo -ne "\e[4 q"' | redraw! |
		\ endif
	au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif


"==============================================================================
" vim 的 session 管理
"==============================================================================
"
" 自动保存 session
autocmd VimLeave * mks! ~/.vim/session.vim
" 加载 session 的快捷键
nmap <Leader>his :source ~/.vim/session.vim<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"
