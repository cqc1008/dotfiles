" 行号
set number    " 显示行号

" 制表符
set tabstop=4    " 制表符的长度。默认是8个空格
set expandtab    " 使用空格替代制表符
set shiftwidth=4    " 每一级缩进是多少个空格
set softtabstop=4    " 在编辑时，一个tab键增加多个空格和一个退格键删除多个连续的空格
" 对指定文件制表符使用两个空格来代替
" autocmd 即“自动命令”，在发生某些事件时自动执行，类似于钩子函数
" BufNewFile 表示编辑一个不存在的文件时
" BufRead 是读取一个已存在的文件时
autocmd BufNewFile,BufRead *.rb,*.erb,*.gemspec,*.html,*.js,*.css set tabstop=2 shiftwidth=2 softtabstop=2

" 标签页
set tabpagemax=20    " 标签页的最大数量

" 缩进
set smartindent    " 在这种缩进形式中，每行都和前一行有相同的缩进量，同时这种缩进形式能正确的识别出花括号，当遇到右花括号（}），则取消缩进形式。此外还增加了识别C语言关键字的功能。如果一行是以#开头的，那么这种格式将会被特殊对待而不采用缩进格式。

" 折叠
" http://www.cnblogs.com/xuxm2007/archive/2011/11/10/2244418.html
" manual 手工定义折叠
" indent 更多的缩进表示更高级别的折叠
" expr 用表达式来定义折叠
" syntax 用语法高亮来定义折叠
" diff 对没有更改的文本进行折叠
" marker 对稳重的标志折叠
set fdm=indent
set foldlevel=100    " 关闭自动折叠

set showmatch    " 括号对应

" 搜索
set ignorecase    " 忽略大小写
set incsearch    " 实时显示搜索结果

" 文件编码
set encoding=utf-8    " 设置编码
set nobomb    " 不使用 Unicode 签名。无bomb头。
set fileencodings=ucs-bom,utf-8,utf-16,cp9936,gb18030,big5,euc-jp,euv-kr,latin1    " 兼容编码



" ================
" 图形界面
" ================
"if has('gui_running')
"endif

" 字体
if has("gui_macvim")
  set guifont=Monaco:h14    " 设置字体和大小
endif

"set guioptions=aAce    " 去掉toolbar

"set transparency=0    " 透明度

colorscheme lucius    " 设置颜色搭配



" ========================
" 插件
" ========================
" NERD Tree
autocmd VimEnter * NERDTree    " 启动Vim时自动打开nerdtree
let NERDTreeShowBookmarks=1    " 一直显示书签
let NERDTreeChDirMode=2    " 打开书签时，自动将Vim的pwd设为打开的目录，如果你的项目有tags文件，你会发现这个命令很有帮助


" LOAD Temaplete 模板插件
let g:template_path = "~/.vim/bundle/load_template/template/"


" NERD Commenter
" 参数
let g:NERDSpaceDelims=1
" 快捷键
map <D-/> \ci<cr>
