" ================
" 图形界面
" ================
"if has('gui_running')
"endif

" 字体
if has("gui_macvim")
  set guifont=Monaco:h18    " 设置字体和大小
endif

set guioptions-=T    " hide toolbar
set lines=55 columns=150

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
