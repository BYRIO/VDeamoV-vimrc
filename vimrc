filetype off
"vim-go | go settings `go get -u github.com/golang/lint`
set runtimepath+=$GOPATH/src/github.com/golang/lint/misc/vim

call plug#begin('~/.vim/plugged')
"{Plugstall with Plug

"AutoFix Sytle
Plug 'hotoo/pangu.vim' "to make your document better

"textobj
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java', 'python'] }
Plug 'sgur/vim-textobj-parameter'

"Cpp Plug
Plug 'octol/vim-cpp-enhanced-highlight'


"Markdowm
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', {'for': ['markdown']}
Plug 'mzlogin/vim-kramdown-tab', {'for': ['markdown']} "fix for kramdown
"Use <leader>tab to use
Plug 'mzlogin/vim-markdown-toc', {'for': ['markdown']}
":GenTocGFM/:GenTocRedcarpet
":UpdateToc 更新目录
Plug 'dhruvasagar/vim-table-mode', {'for': ['markdown']}
"<leader>tm to enable
"|| in the insert mode to create a horizontal line
"| match the | up row
"<leader>tdd to delete the row
"<leader>tdc to delete the coloum
"<leader>tt to change the exist text to format table

"Opengl
Plug 'tikhomirov/vim-glsl', {'for':['swift']}
"vim: set ft=glsl:

"Blog
Plug 'tpope/vim-liquid'
"Swift
Plug 'keith/swift.vim',{'for':['swift']}
"go
Plug 'fatih/vim-go',{'for': ['go']}


"Compile
"Plug 'dmdque/solidity.vim'
"solidity Type:make from a .sol file
"Plug 'groenewege/vim-less'
"js extend less,need install less npm install less
Plug 'xuhdev/vim-latex-live-preview'
"Github
Plug 'tpope/vim-fugitive'
Plug 'skywind3000/asyncrun.vim' "编译C++
"Debuge For PHP,Pyton,Perl,Ruby,Tcl and NodeJS,etc
"Plug 'joonty/vdebug'


"FileManage
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'Xuyuanp/nerdtree-git-Plugin'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'


"search
Plug 'mhinz/vim-signify' "代替gitgutter
"Plug 'mhinz/vim-grepper'
Plug 'dyng/ctrlsf.vim'
Plug 'rizzatti/dash.vim'


"Brackets Jump 智能补全括号和跳转
Plug 'Raimondi/delimitMate' "补全括号 shift+tab出来
Plug 'vim-scripts/matchit.zip' " %  g% [% ]% a%
Plug 'tpope/vim-surround'

"代码补全
"TagsGenerator
Plug 'ludovicchabant/vim-gutentags'
Plug 'Valloric/YouCompleteMe'
"Plug 'marijnh/tern_for_vim'
"增强YCM的JavaScript omnifunc


"Snippet 智能输入
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'


"动态检查
Plug 'w0rp/ale' "代替syntastic的选择
"Plug 'einars/js-beautify'
"Plug 'maksimr/vim-jsbeautify'


"Commenter 智能注释
"Plug 'ddollar/nerdcommenter'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-commentary'


"Coding Reading 阅读代码的插件
Plug 'Yggdroot/LeaderF'
"Plug 'Lokaltog/vim-powerline'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'Yggdroot/indentLine' "缩进的虚线
Plug 'bling/vim-bufferline' "为打开的文件有一个快捷栏
Plug 'kshenoy/vim-signature' "书签可视化
Plug 'tmhedberg/simpylfold'

"Other Setting
Plug 'vim-scripts/LargeFile'
"}Initialize Plug system
call plug#end()


"{Basic settings
set nocompatible
set nospell
"关闭拼写检查
set number
"显示行号
set relativenumber
"show relative line number
set fileformats=unix,dos,mac
set hlsearch
set incsearch " Shows the match while typing
set ignorecase
set smartcase
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set fileformats=unix,dos,mac
set linespace=0             " No extra spaces between rows
set showmatch               " Show matching brackets/parenthesis
set confirm                 " Confirm before vim exit
if has('clipboard')
    if has('unnamedplus')  " When possible use + register for copy-paste
        set clipboard=unnamed,unnamedplus
    else         " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed
    endif
endif
set nobackup
set noswapfile
set nowritebackup
set iskeyword-=_,.,=,-,:,
set foldmethod=indent
set tabstop=2  softtabstop=2 shiftwidth=2 expandtab
set guifont=Source\ Code\ Pro\ for\ Powerline:h16
set autoread
set wildignore=*.o,*~,*.pyc,*.swp,*.bak,*.class
if has('win16') || has('win32')
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif
set lazyredraw      " don't update the display while executing macros
set switchbuf=useopen           " reveal already opened files from the
" quickfix window instead of opening new
" buffers
set wildmenu
set copyindent
set wildmode=list:longest,full
set whichwrap=b,s,h,l,<,>,>h,[,]   " Backspace and cursor keys wrap too

if !&scrolloff
    set scrolloff=1           " Minimum lines to keep above and below cursor
endif

if !&sidescrolloff
    set scrolloff=5
endif
set display+=lastline
" set nowrap      " Do not wrap long lines
set backspace=eol,start,indent
if has('syntax')
    syntax enable
endif
set textwidth=80 "最大字符长度
let &colorcolumn=join(range(81,999),',')
let &colorcolumn='80,'.join(range(120,999),',')
set colorcolumn=+1
set autoindent
set smartindent
set smarttab
set ruler

if has('gui_macvim')            "autocmd GUIEnter * set fullscreen
    set fuoptions=maxvert,maxhorz
    set transparency=10
endif

set cursorcolumn
set cursorline
"set autochdir "disable for leadf
set laststatus=2  " always show statusline
set showtabline=2 " always show tabline
set hidden
" enables filetype based indentation
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
"
filetype plugin indent on
set noerrorbells novisualbell t_vb=
set autowrite
set autowriteall "Auto-write all file changes
" autocompletion with dictionary help
set dictionary+=/usr/share/dict/words
set dictionary+=~/.vim/dict/
set statusline+=%*
set statusline+=%#warningmsg#
filetype on
set shortmess+=filmnrxoOtT          " Abbrev. of messages (avoids 'hit enter')
set showmode                        " Display current mode
set showcmd                         " Show partial commands in status line and
" Selected characters/lines in visual mode
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set virtualedit=onemore " used with caution of breaking plugins
set completeopt=menuone,menu,preview,longest
set tags=./tags;/,~/.vimtags
" Make tags placed in .git/tags file available in all levels of a repository
let gitroot = substitute(system('git rev-parse --show-toplevel'), '[\n\r]', '', 'g')
if gitroot != ''
    let &tags = &tags . ',' . gitroot . '/.git/tags'
endif

" colorscheme Tomorrow-Night
colorscheme PaperColor
"colorscheme hybrid_material
"colorscheme anderson

set t_Co=256
set nofoldenable                  " Auto fold code
set foldlevel=99
"set foldlevelstart=99
set nomodeline                  " disable mode lines (security measure)
" allow mouse select and etc operation
set mouse=a
set history=1000
" no annoying sound on errors
set timeoutlen=500
set formatoptions+=t
if v:version > 703 || v:version == 703 && has('patch541')
    set formatoptions+=j " Delete comment chars when join comment lines
endif
set formatoptions-=l " wrap long lines
set wrapmargin=2 " 2 chars wrap margin from the right window border, hard wrap
"set conceallevel=0
set list
set guioptions=e "only show guitablabel
"set guioptions=
syntax on
highlight CursorLine term=reverse
highlight CursorColumn term=reverse
"}

"{Mappings
let mapleader=','

" 定义移动到行首行尾
nmap LB ^
nmap LE $

nnoremap <Leader>eg :e ++enc=gbk<CR>
nnoremap <Leader>eu :e ++enc=utf8<CR>

" Use <C-L> to clear the highlighting of :set hlsearch
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
nnoremap <leader>l :set list!<CR>
nnoremap <leader>ll :set conceallevel=0
nnoremap <leader>lc :set conceallevel=1
"show the $ in the end of the line
"noremap <Leader>W :w !sudo tee % > /dev/null
" Quickly edit/reload the vimrc file
nnoremap <leader>ev :tabe $MYVIMRC<CR>
"fast find vimrc
autocmd! BufWritePost .vimrc source ~/.vimrc

"nnoremap <space> za
"vnoremap <space> zf
"Both are fold the function, change to zs and zo for simpyfold

" tab switch key mappings
" http://vim.wikia.com/wiki/Alternative_tab_navigation
"nnoremap <A-1> 1gt
"nnoremap <A-2> 2gt
"nnoremap <A-3> 3gt
"nnoremap <A-4> 4gt
"nnoremap <A-5> 5gt
"nnoremap <A-6> 6gt
"nnoremap <A-7> 7gt
"nnoremap <A-8> 8gt
"nnoremap <A-9> 9gt
"nnoremap <A-0> 10gt
" map for xxd editing
nnoremap <Leader>xd :%!xxd<CR>
nnoremap <Leader>xr :%!xxd -r<CR>
"show HEX and return
nnoremap <leader>t :tabe<CR>
"open a new tab
"nnoremap <leader>st :echo strftime('%c')<CR>
"show time now

nnoremap <leader>v :vnew<CR>
"open new
nnoremap <leader>tq :tabclose<CR>
"close tab

"
"Tips
nmap . .`[

"nnoremap    <C-Tab>    :tabnext<CR>
"imap   <C-Tab>    <C-O>:tabnext<CR>
"map    <C-S-Tab>  :tabprev<CR>
"imap   <C-S-Tab>  <C-O>:tabprev<CR>
"Simplify help navigation
"http://vim.wikia.com/wiki/Learn_to_use_help
"Press Enter to jump to the subject (topic) under the cursor.
"Press Backspace to return from the last jump.
"Press s to find the next subject, or S to find the previous subject.
"Press o to find the next option, or O to find the previous option.
"nnoremap <buffer> <CR> <C-]>
"nnoremap <buffer> <BS> <C-T>
"nnoremap <buffer> o /'\l\{2,\}'<CR>
"nnoremap <buffer> O ?'\l\{2,\}'<CR>
"nnoremap <buffer> s /\|\zs\S\+\ze\|<CR>
"nnoremap <buffer> S ?\|\zs\S\+\ze\|<CR>
"}

"{Plug settings

"LeaderF
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <c-n> :LeaderfMru<cr>
noremap π :LeaderfFunction!<cr>
"noremap ˜ :LeaderfBuffer<cr>
noremap <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

"vim-gutentags
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

"w0rp/ale
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

let g:ale_sign_eror = 'E'
let g:ale_sign_warning = 'W'

let g:ale_linters = {
\   'python': ['pylint'],
\   'latex': ['lacheck'],
\   'swift': ['swiftlint'],
\   'markdown': ['markdownlint'],
\   'cpp': ['gcc', 'cpplint'],
\   'c': ['gcc', 'cpplint'],
\   'java': ['javac','google-java-format'],
\}


let g:ale_fixers = {
\   '*': ['remove_trailing_lines','trim_whitespace' ],
\   'python': ['autopep8']
\}
"let g:ale_fix_on_save = 1 "auto Sava
"Use :ALEFix to fix

let g:ale_list_window_size = 5

"asyncrun
" auto open quickfix window ,height = 6
let g:asyncrun_open = 6
let g:asyncrun_bell = 1
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml']
nnoremap <F10> : call asyncrun#quickfix_toggle(6)<CR>
" nnoremap <silent> <F9> :AsyncRun gcc -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <CR>
" nnoremap <silent> <F8> :AsyncRun -cwd=<root> -mode=4 make run <CR>
" nnoremap <silent> <F7> :AsyncRun -cwd=<root> make <CR>
" nnoremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <CR>

"pangu.vim
autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()

"vim-table-mode
let g:table_mode_corner = '|'
let g:table_mode_delimiter = ' '
let g:table_mdoe_verbose = 0
let g:table_mode_auto_align = 0
"autocmd FileType markdown TableModeEnable

"vim-markdown-toc
let g:vmt_auto_update_on_save=1 "update toc when save
let g:vmt_dont_insert_fence=0 "if equals to 1, can't update toc when save

"SimpylFold
let g:SimpyFold_docstring_preview=1
nnoremap <space> zc
"zo to unfold

"deoplete
"let g:deoplete#enable_at_startup = 1

"emmet-vim
"let g:user_emmet_settings = {
            "\ 'wxss': {
            "\   'extends': 'css',
            "\ },
            "\ 'wxml': {
            "\   'extends': 'html',
            "\   'aliases': {
            "\     'div': 'view',
            "\     'span': 'text',
            "\   },
            "\  'default_attributes': {
            "\     'block': [{'wx:for-items': '{{list}}','wx:for-item': '{{item}}'}],
            "\     'navigator': [{'url': '', 'redirect': 'false'}],
            "\     'scroll-view': [{'bindscroll': ''}],
            "\     'swiper': [{'autoplay': 'false', 'current': '0'}],
            "\     'icon': [{'type': 'success', 'size': '23'}],
            "\     'progress': [{'precent': '0'}],
            "\     'button': [{'size': 'default'}],
            "\     'checkbox-group': [{'bindchange': ''}],
            "\     'checkbox': [{'value': '', 'checked': ''}],
            "\     'form': [{'bindsubmit': ''}],
            "\     'input': [{'type': 'text'}],
            "\     'label': [{'for': ''}],
            "\     'picker': [{'bindchange': ''}],
            "\     'radio-group': [{'bindchange': ''}],
            "\     'radio': [{'checked': ''}],
            "\     'switch': [{'checked': ''}],
            "\     'slider': [{'value': ''}],
            "\     'action-sheet': [{'bindchange': ''}],
            "\     'modal': [{'title': ''}],
            "\     'loading': [{'bindchange': ''}],
            "\     'toast': [{'duration': '1500'}],
            "\     'audio': [{'src': ''}],
            "\     'video': [{'src': ''}],
            "\     'image': [{'src': '', 'mode': 'scaleToFill'}],
            "\   }
            "\ },
"\}

"vim-latex-live-preview
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'

"pathogen
execute pathogen#infect()

"bling/vim-airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = '⭡'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.branch = '⭠'
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

"scrooloose/nerdtree
nnoremap <leader>ne :NERDTreeFind<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
let g:NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let g:NERDTreeChDirMode=2
let NERDTreeWinPos="left"
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeShowBookmarks=1
let g:NERDTreeIgnore=['\.pyc','\~$','\.swp']

"noscripter/tabman.vim
"  let g:tabman_side="right"
"let g:tabman_specials=1
"let g:tabman_number = 1

"mhinz/vim-startify
noremap <Leader>s :Startify<CR>
let g:startify_list_order = [
            \ ['   Bookmarks'],     'bookmarks',
            \ ['   MRU'],           'files' ,
            \ ['   MRU '.getcwd()], 'dir',
            \ ['   Sessions'],      'sessions',
            \ ]
let g:startify_bookmarks = [
            \ '~/Documents/Github/VDeamoV.github.io',
            \ '~/Desktop',
            \ '~/Documents/Coding/Test']
let g:startify_change_to_dir          = 0
let g:startify_enable_special         = 0
let g:startify_files_number           = 8
let g:startify_session_autoload       = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_persistence    = 1
let g:startify_use_env                = 1

"YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 2
"Preview windows settings
set splitbelow  "set preview window below
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_cache_omnifunc=0
" 禁止缓存匹配项,每次都重新生成匹配项
"leave '<tab>', '<c-j>' for ultisnips
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
"leave '<s-tab>', '<c-k>' for ultisnips
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
nnoremap <leader>lo :lopen<CR>
nnoremap <leader>lc :lclose<CR>

" 开启各种补全引擎
let g:ycm_auto_trigger = 1                  " 开启 YCM 基于标识符补全，默认为1
let g:ycm_seed_identifiers_with_syntax=1                " 开启 YCM 基于语法关键字补全
let g:ycm_complete_in_comments = 1              " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1               " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_tags_files=1         " 开启 YCM 基于标签引擎
let g:ycm_python_binary_path='/usr/local/bin/python3'
let g:ycm_server_python_interpreter='/usr/local/bin/python3'

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
"跳转到定义处
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_filetype_blacklist = {
            \ 'tagbar' : 1,
            \ 'qf' : 1,
            \ 'notes' : 1,
            \ 'markdown' : 1,
            \ 'unite' : 1,
            \ 'text' : 1,
            \ 'vimwiki' : 1,
            \ 'pandoc' : 1,
            \ 'infolog' : 1,
            \ 'mail' : 1
            \}

"let g:ycm_semantic_triggers = {
"\   'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
"\   'cs,lua,javascript': ['re!\w{2}'],
"\}

let g:ycm_semantic_triggers =  {
            \ 'c' : ['->', '.'],
            \ 'objc' : ['->', '.'],
            \ 'ocaml' : ['.', '#'],
            \ 'cpp,objcpp' : ['->', '.', '::'],
            \ 'perl' : ['->'],
            \ 'php' : ['->', '::'],
            \ 'cs,java,javascript,d,python,perl6,scala,vb,elixir,go' : ['.'],
            \ 'vim' : ['re![_a-zA-Z]+[_\w]*\.'],
            \ 'ruby' : ['.', '::'],
            \ 'lua' : ['.', ':'],
            \ 'erlang' : [':'],
            \ 'css': ['re!^\s{4}', 're!:\s+'],
            \ 'html': ['</'],
            \}

"neosnippet
"disables all runtime snippets
let g:neosnippet#disable_runtime_snippets = {
            \ '_' : 1
            \ }

"SirVer/ultisnips
"customize python and keymapping
"ref:https://gist.github.com/lencioni/dff45cd3d1f0e5e23fe6
"ref:https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
let g:UltiSnipsUsePythonVersion    = 3
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsListSnippets        = "<c-l>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"


"moll/vim-node
"    autocmd User Node
            "\ if &filetype == "javascript" |
            "\   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
            "\   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
            "\ endif

"othree/javascript-libraries-syntax.vim
"let g:used_javascript_libs = 'react,angularjs,flux'

"pangloss/vim-javascript
"let javascript_enable_domhtmlcss    = 1
"let g:javascript_conceal_function   = "ƒ"
"let g:javascript_conceal_null       = "ø"
"let g:javascript_conceal_this       = "@"
"let g:javascript_conceal_return     = "⇚"
"let g:javascript_conceal_undefined  = "¿"
"let g:javascript_conceal_NaN        = "ℕ"
"let g:javascript_conceal_prototype  = "¶"
"groenewege/vim-less
"   autocmd BufNewFile,BufRead *.less set filetype=less
"autocmd FileType less set omnifunc=csscomplete#CompleteCSS

"vim-airline/vim-airline-themes
let g:airline_theme='dark'

"fatih/vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 0
au FileType go set expandtab

"Yggdroot/indentLine
let g:indentLine_enabled=1
"let g:indentLine_conceallevel=0

"mhinz/vim-grepper
"" Mimic :grep and make ag the default tool.
"let g:grepper = {
            "\ 'tools': ['ag', 'git', 'grep'],
            "\ 'open':  0,
            "\ 'jump':  1,
            "\ }

"}

"{helper functions
" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=1 Rename let tpname = expand('%:t') | saveas <args> | edit <args> | call delete(expand(tpname))
command! -nargs=* Stab call Stab()

function! Stab()
    "设置缩进
    let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
    if l:tabstop > 0
        let &l:sts = l:tabstop
        let &l:ts = l:tabstop
        let &l:sw = l:tabstop
    endif
    call SummarizeTabs()
endfunction

function! SummarizeTabs()
    "查看当前的缩进情况
    try
        echohl ModeMsg
        echon 'tabstop='.&l:ts
        echon ' shiftwidth='.&l:sw
        echon ' softtabstop='.&l:sts
        if &l:et
            echon ' expandtab'
        else
            echon ' noexpandtab'
        endif
    finally
        echohl None
    endtry
endfunction

function! GuiTabLabel()
    let label = ''
    let bufnrlist = tabpagebuflist(v:lnum)
    " Add '+' if one of the buffers in the tab page is modified
    for bufnr in bufnrlist
        if getbufvar(bufnr, "&modified")
            let label = '+'
            break
        endif
    endfor
    " Append the tab number
    let label .= v:lnum.': '
    " Append the buffer name
    let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
    if name == ''
        " give a name to no-name documents
        if &buftype=='quickfix'
            let name = '[Quickfix List]'
        else
            let name = '[No Name]'
        endif
    else
        " get only the file name
        let name = fnamemodify(name,":t")
    endif
    let label .= name
    " Append the number of windows in the tab page
    let wincount = tabpagewinnr(v:lnum, '$')
    return label . '  [' . wincount . ']'
endfunction

function! SetTabLabel()
    set guitablabel=%{GuiTabLabel()}
endfunction

" http://vimdoc.sourceforge.net/htmldoc/gui.html
"echom "May The FORCE be with U!"
if exists('+showtabline')
    function! MyTabLine()
        let s = ''
        let t = tabpagenr()
        let i = 1
        while i <= tabpagenr('$')
            let buflist = tabpagebuflist(i)
            let winnr = tabpagewinnr(i)
            let s .= '%' . i . 'T'
            let s .= (i == t ? '%1*' : '%2*')
            let s .= ' '
            let s .= i . ':'
            let s .= ' %*'
            let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
            let file = bufname(buflist[winnr - 1])
            let file = fnamemodify(file, ':p:t')
            if file == ''
                let file = '[No Name]'
            endif
            let s .= file
            let i = i + 1
        endwhile
        let s .= '%T%#TabLineFill#%='
        let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
        return s
    endfunction
    set stal=2
    set tabline=%!MyTabLine()
endif

"http://vim.wikia.com/wiki/Show_tab_number_in_your_tab_line
" set up tab tooltips with every buffer name
function! GuiTabToolTip()
    let tip = ''
    let bufnrlist = tabpagebuflist(v:lnum)
    for bufnr in bufnrlist
        " separate buffer entries
        if tip != ''
            let tip .= " \n "
        endif
        " Add name of buffer
        let name = bufname(bufnr)
        " add modified/modifiable flags
        if getbufvar(bufnr, "&modified")
            let tip .= ' [+]'
        endif
    endfor
    return tip
endfunction
set guitabtooltip=%{GuiTabToolTip()}

" url:http://vimcasts.org/episodes/tidying-whitespace/
function! Preserve(command)
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line('.')
    let c = col('.')
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nnoremap _$ :call Preserve("%s/\\s\\+$//e")<CR>
nnoremap _= :call Preserve("normal gg=G")<CR>

"Allow to toggle background
function!  ToggleBG()
    let s:tbg = &background
    " Inversion
    if s:tbg == 'light'
        set background=dark
    else
        set background=light
    endif
endfunction
" set background is dark at the startup
set background=dark
noremap <leader>bg :call ToggleBG()<CR>

"CompileConfig
map <leader>r :call CompileRun()<CR>
func! CompileRun()
    exec "w"
    if &filetype == 'c'
        exec "!clear && g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!clear && g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!clear"
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        exec "!clear"
        exec "!time bash %"
    elseif &filetype == 'python'
        exec "!clear && python3 %"

    elseif &filetype == 'html'
        exec "!open -a Safari % &"
    elseif &filetype == 'go'
        exec "!clear"
        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'markdown'
        exec "!clear"
        exec "!open -a Typora %"
    endif
endfunc

augroup quickfix
    autocmd!
    autocmd QuickFixCmdPost make nested copen
augroup END
"}

"{auto commands
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
autocmd! BufRead,BufNewFile *.swift set filetype=swift
autocmd! BufRead,BufNewFile *.markdown set filetype=markdown
autocmd! BufRead,BufNewFile *.md       set filetype=markdown
autocmd! BufRead,BufNewFile,BufReadPost *.snippets set filetype=snippets
autocmd! BufRead,BufNewFile *.json set filetype=json
autocmd! BufRead,BufNewFile *.ts set filetype=typescript
autocmd BufNewFile,BufRead *.vm set filetype=html
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
autocmd BufNewFile,BufRead *.conf set filetype=config
au BufRead,BufNewFile *.scss set filetype=scss.css
autocmd BufNewFile,BufRead *.vm set filetype=html
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd FileType haskell setlocal commentstring=--\ %s
autocmd BufNewFile,BufRead *.rss setfiletype xml
autocmd FileType xhtml,xml ru ftPlug/html/autoclosetag.vim
" Instead of reverting the cursor to the last position in the buffer, we
" set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG
            \ call setpos('.', [0, 1, 1, 0])
au VimEnter * :call SetTabLabel()
autocmd BufNewFile,BufReadPost *.md set filetype=markdown "Maybe Conflict"
autocmd BufRead,BufNewFile *.json setf json
autocmd BufNewFile,BufReadPost *.xtpl set filetype=html
autocmd BufNewFile,BufRead *.vm set ft=velocity
autocmd BufNewFile,BufRead *.xtpl set ft=html
autocmd BufNewFile,BufRead *.ejs set ft=html
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xtpl set ft=html
autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
autocmd FocusGained, BufEnter * :silent! !
autocmd FileType python syn keyword pythonDecorator True None False self
autocmd BufNewFile,BufRead *.jinja set syntax=htmljinja
autocmd BufNewFile,BufRead *.mako set ft=mako
autocmd BufRead,BufNewFile *.md set filetype=markdown "Maybe Conflict""
autocmd BufRead,BufNewFile *.tex set filetype=tex
au! BufRead,BufNewFile *.bat
            \ if getline(1) =~ '--\*-Perl-\*--' | setf perl | endif
autocmd WinEnter call SetTabLabel()
autocmd BufEnter call SetTabLabel()
"https://superuser.com/questions/195022/vim-how-to-synchronize-nerdtree-with-current-opened-tab-file-path
if expand("%:p")
    autocmd BufEnter * lcd %:p:h
endif
"http://inlehmansterms.net/2014/09/04/sane-vim-working-directories/
"http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
autocmd BufEnter * silent! lcd %:p:h
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif
let s:default_path = escape(&path, '\ ') " store default value of 'path'

" Always add the current file's directory to the path and tags list if not
" already there. Add it to the beginning to speed up searches.
autocmd BufRead *
            \ let s:tempPath=escape(escape(expand("%:p:h"), ' '), '\ ') |
            \ exec "set path-=".s:tempPath |
            \ exec "set path-=".s:default_path |
            \ exec "set path^=".s:tempPath |
            \ exec "set path^=".s:default_path
autocmd Filetype *
            \if &omnifunc == "" |
            \setlocal omnifunc=syntaxcomplete#Complete |
            \endif
" Automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
" Restore cursor position upon reopening files {{{
autocmd BufReadPost *
            \ if &filetype != "gitcommit" && line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
" }}}
" gnuplot syntax highlighting
au BufNewFile,BufRead *.plt,.gnuplot setf gnuplot
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd FileType ruby set dictionary+=~/.vim/dict/ruby.dict
au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict
" 按照PEP8标准来配置vim
au BufNewFile,BufRead *.py,*.cpp set tabstop=4 |set softtabstop=4|set shiftwidth=4|set textwidth=79|set expandtab|set autoindent|set fileformat=unix


"Let external space be red
hi BadWhitespace guifg=gray guibg=red ctermfg=gray ctermbg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"}

