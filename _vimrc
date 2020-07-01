"保存.vimrc文件时自动重启加载，即让此文件立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 设置编码
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936

" 打开语法高亮
syntax on

" 在底部显示，当前处于命令模式还是插入模式
set showmode

" 命令模式下，在底部显示，当前键入的指令。比如，键入的指令是`2y3d`，那么底部就会显示`2y3`，当键入`d`的时候，操作完成，显示消失
set showcmd

" 支持使用鼠标
set mouse=a

" 启用256色
set t_Co=256

" 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set autoindent

" 由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格
set expandtab

" 显示行号
set number

" 显示光标所在的当前行的行号，其他行都为相对于该行的相对行号
set relativenumber

" 光标所在的当前行高亮
set cuc

" 光标所在的当前列高亮
set cul

" 自动折行，即太长的行分成几行显示
set wrap

" 在状态栏显示光标的当前位置(位于哪一行哪一列)
set ruler

" 光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set showmatch

" 搜索时，高亮显示匹配结果
set hlsearch

" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch

" 搜索时忽略大小写
set ignorecase

" Tab键的宽度
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4


" 以下为插件管理

set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 自动缩进
filetype indent on

set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin('$VIM/vimfiles/bundle/')

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim' 
Bundle 'Solarized' 

call vundle#end()
filetype plugin indent on

" lightline配置
set laststatus=2
let g:lightline = { 'colorscheme': 'powerline', }

" Solarized配置
syntax enable

if  has('gui_running')
	set  background=dark
else
                set  background=dark
endif
        	colorscheme solarized
