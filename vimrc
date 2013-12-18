" This must be first, because it changes other options as a side effect
" 不兼容vi
set nocompatible

" 默认打开一个已存在的文件后，文件中的字符，不能用backspace键删除。但是此时如果输入新字符，却可以用backspace进行删除。
" 用以下设置来解决这个问题
" indent: 如果用了 :set indent, :set ai 等自动缩进，想用退格键将字段缩进删掉，必须设置这个选项。否则不影响
" eol: 如果插入模式下在行开头，想通过退格键合并两行，需要设置这个
" start: 要删除此次插入前的输入，需设置这个。
set backspace=indent,eol,start

set nobackup
set nowritebackup
set history=50    " keep 50 lines of command line history
set ruler    " show the cursor position all the time
set showcmd    " display incomplete commands
set incsearch    " do incremental searching 实时显示搜索结果

" Don't use Ex mode, use Q for formatting
" map Q gq

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
  set hlsearch    " 高亮度反白
endif

if has("autocmd")
  call pathogen#infect()    " 必须在 'filetype plugin indent on' 之前

  filetype plugin indent on
endif

" 行号
set number    " 显示行号

" 制表符
set tabstop=2    " 制表符的长度。默认是8个空格
set expandtab    " 使用空格替代制表符
set shiftwidth=2    " 每一级缩进是多少个空格
set softtabstop=2    " 在编辑时，一个tab键增加多个空格和一个退格键删除多个连续的空格
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

" 文件编码
set encoding=utf-8    " 设置编码
set nobomb    " 不使用 Unicode 签名。无bomb头。
set fileencodings=ucs-bom,utf-8,utf-16,cp9936,gb18030,big5,euc-jp,euv-kr,latin1    " 兼容编码
