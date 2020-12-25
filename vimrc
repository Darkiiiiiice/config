"
"  __  __            _       __  __                    __     _____ __  __ 
" |  \/  | __ _ _ __(_) ___ |  \/  | __ _ _ __   __ _  \ \   / /_ _|  \/  |
" | |\/| |/ _` | '__| |/ _ \| |\/| |/ _` | '_ \ / _` |  \ \ / / | || |\/| |
" | |  | | (_| | |  | | (_) | |  | | (_| | | | | (_| |   \ V /  | || |  | |
" |_|  |_|\__,_|_|  |_|\___/|_|  |_|\__,_|_| |_|\__, |    \_/  |___|_|  |_|
"                                               |___/                      
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Name:     MarioMang Vim Configuration File
" Author:   MarioMang
" Date:     2020-08-21
" Gtihub:   https://github.com/mariomang
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 基础配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
let mapleader = ' '
let &t_ut=''
set backspace=indent,eol,start
set number                  " 设置行号
set nocompatible            " 设置不兼容 vi
syntax on                   " 语法高亮
syntax enable               " 语法高亮
set showmode                " 底部显示模式
set showcmd                 " 底部显示命令
set mouse=a                 " 支持鼠标
set encoding=utf-8          " UTF-8编码
set t_Co=256                " 启用256色
set laststatus=2            " 是否显示状态栏
set ruler                   " 状态栏显示光标位置
set encoding=utf-8          " 设置编码
set termencoding=utf-8      " 设置终端编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4       " tab缩进
set ts=4            " tab空格
set shiftwidth=4    " 代码缩进
set expandtab       " 将tab转空格
set autoindent      " 
set softtabstop=4   " tab转空格数量
set relativenumber  " 显示相对行号
set cursorline      " 光标所在行高亮
set textwidth=256   " 每行显示多少个字符
set wrap            " 自动拆行显示
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch       " 高亮匹配的括号
set hlsearch        " 高亮匹配结果
set incsearch       " 输入高亮
set smartcase       " 智能大小写
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set spell spelllang=en_us      " 打开英语单词拼写检查
"set nobackup                    " 不创建备份文件
"set noswapfile                  " 不创建交换文件
"set visualbell                 " 出错时发出视觉提示
set history=1000                " 历史操作数量
set autoread                    " 打开文件监视
set wildmenu                    " tab自动补全命令 
set wildmode=longest:list,full  " 
set foldmethod=indent
set foldlevel=99
set scrolloff=5
set updatetime=100
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 定制状态栏
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline=%1*\[%.40F]▶\     " 显示文件路径
set statusline+=%2*\%r%w%m%{&fenc}%=%l/%L,%c-%p%%\
hi User1 cterm=bold ctermfg=255 ctermbg=242
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Plug 包管理
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Scripteas
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-scriptease'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change Color Scheme  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'chxuan/change-colorscheme'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Startify 启动界面
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'chxuan/vimplus-startify'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Go  Golang插件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'fatih/vim-go'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim NerdTree 文件树
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Airline 状态栏 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Coc 代码补全
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim', {'branch': 'release'}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Auto Pairs 括号匹配
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'jiangmiao/auto-pairs'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim 主题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'gruvbox-community/gruvbox'
Plug 'iamcco/markdown-preview.nvim'
call plug#end()


set bg=dark                     "设置背景为黑色
colorscheme gruvbox             "设置主题为 gruvbox
set guioptions=                 "去掉两边的scrollbar


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
nnoremap <leader>n :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1
let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='x'

let g:NERDTreeGitStatusIndicatorMapCustom = {
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COC.NVim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AirLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="deus"
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" let g:airline_left_sep = '<'
" let g:airline_left_alt_sep = '<<'
" let g:airline_right_sep = '>'
" let g:airline_right_alt_sep = '>>'





" ------------------- vim-go.vim configuration --------------------
" use golang language server
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
" Highlight more info
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_list_type = "quickfix"
" highlight same variable in view
let g:go_auto_sameids = 1
" show type info in statusbar
let g:go_auto_type_info = 1
let g:go_fmt_autosave = 0
" disable gd mapping of vim-go
let g:go_def_mapping_enabled = 0
let g:godef_split=2
" -------------------- vim-go.vim configuration finished --------------------
"
"
" -------------------- vim coc.nvim configuration --------------------
let g:coc_global_extensions = ['coc-json', 'coc-vimlsp', 'coc-sh', 'coc-clangd', 'coc-xml', 'coc-html', 'coc-go', 'coc-python', 'coc-rls', 'coc-yaml', 'coc-tslint', 'coc-tslint-plugin', 'coc-toml', 'coc-sql', 'coc-protobuf', 'coc-markdownlint', 'coc-format-json', 'coc-docker']
" 设置tab补全
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
if has('nvim')
   inoremap <silent><expr> <c-o> coc#refresh()
else
     inoremap <silent><expr> <c-@> coc#refresh()
endif
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" show documentation in preview window
nnoremap <silent> <LEADER>d :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" coc.nvim-golang
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')




" -------------------- vim coc.nvim configuration finished --------------------
"
" 
" -------------------- vim custom keymap configuration --------------------
"
" 设置窗口分屏
map <LEADER>sk :set nosplitbelow<CR>:split<CR>
map <LEADER>sh :set nosplitright<CR>:vsplit<CR>
map <LEADER>sl :set splitright<CR>:vsplit<CR>
map <LEADER>sj :set splitbelow<CR>:split<CR>

" 设置分屏移动光标
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

" 设置分屏设置大小
map <LEADER>rj :res -5<CR>
map <LEADER>rk :res +5<CR>
map <LEADER>rh :vertical resize -5<CR>
map <LEADER>rl :vertical resize +5<CR>

" 设置Tab
map <LEADER>t :tabe<CR>
map <LEADER>tn :tabnext<CR>
map <LEADER>tp :tabprev<CR>

map <LEADER>sc :set spell!<CR>




" -------------------- vim custom keymap configuration finished --------------------
