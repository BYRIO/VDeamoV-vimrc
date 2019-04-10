call plug#begin('~/.vim/plugged')
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Pluglist                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Need attention

" System
Plug 'lyokha/vim-xkbswitch', {'as': 'xkbswitch'}        " fix for cn change en
Plug 'vim-scripts/LargeFile'                            " Fast Load for Large files
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java', 'python'] }
Plug 'sgur/vim-textobj-parameter'

" Coding
Plug 'Valloric/YouCompleteMe'                           " auto completetion
Plug 'ludovicchabant/vim-gutentags'                     " auto generate tags
Plug 'w0rp/ale'                                         " Syntax Check
Plug 'SirVer/ultisnips'                                 " snippets
Plug 'VDeamoV/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'                             " Brackets Jump 智能补全括号和跳转
                                                        " 补全括号 shift+tab出来
Plug 'vim-scripts/matchit.zip'                          " %  g% [% ]% a%
" Plug 'sillybun/vim-repl', {'do': './install.sh'}      " python <Leader-w>逐行执行
" Plug 'sillybun/vim-async', {'do': './install.sh'}
" Plug 'sillybun/zytutil'
Plug 'Shougo/echodoc.vim'                               " U will like it
Plug 'octol/vim-cpp-enhanced-highlight', {'for':['c', 'cpp']}
Plug 'easymotion/vim-easymotion'                        " trigger with <leader><leader>+s/w/gE
Plug 'skywind3000/asyncrun.vim'                         " Compile

" Writing Blog
Plug 'hotoo/pangu.vim', {'for': ['markdown']}                                   "to make your document better
Plug 'godlygeek/tabular', {'for': ['markdown']}
Plug 'plasticboy/vim-markdown', {'for': ['markdown']}
Plug 'mzlogin/vim-kramdown-tab', {'for': ['markdown']}                          "fix for kramdown
"Use <leader>tab to use
Plug 'mzlogin/vim-markdown-toc', {'for': ['markdown']}
" :GenTocGFM/:GenTocRedcarpet
":UpdateToc 更新目录
Plug 'dhruvasagar/vim-table-mode', {'for': ['markdown']}
"<leader>tm to enable
"|| in the insert mode to create a horizontal line
"| match the | up row
"<leader>tdd to delete the row
"<leader>tdc to delete the coloum
"<leader>tt to change the exist text to format table
Plug 'xuhdev/vim-latex-live-preview', {'for': ['tex']}                          " Use when you work with cn
Plug 'lervag/vimtex', {'for': ['tex']}                                          " English is okay, fail with cn


"FileManage
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'Xuyuanp/nerdtree-git-Plugin'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'


" Apperance
Plug 'itchyny/lightline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'Yggdroot/indentLine'                                                      " Show indent line
Plug 'bling/vim-bufferline'                                                     " 为打开的文件有一个快捷栏
Plug 'kshenoy/vim-signature'                                                    " Visible Mark
" Plug 'vim-airline/vim-airline'                                                " It cause tons of lag 
" Plug 'vim-airline/vim-airline-themes'

" Github
Plug 'tpope/vim-fugitive'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }   " visit github in vim 

" Search
Plug 'tpope/vim-abolish'                                                        "增强版的substitue
                                                                                ":%S/{man,dog}/{dog,man}/g 替换man和dog的位置
Plug 'Yggdroot/LeaderF'                                                         " Ultra search tools
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Mappings                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Caution: Mapping should place before PluginConfigure


let mapleader=','

nmap . .`[
nmap <leader>w :w<CR>
nmap <leader>q :wq<CR>


nnoremap <Leader>eg :e ++enc=gbk<CR>
nnoremap <Leader>eu :e ++enc=utf8<CR>

nnoremap <leader>lc :set list!<CR>                      " quick config to see or not see special character  
nnoremap <leader>ll :set conceallevel!<CR>              " quick change conceal mode

nnoremap <leader>ev :tabe $MYVIMRC<CR>                  " Quickly edit/reload the vimrc file

" show HEX and return
nnoremap <Leader>xd :%!xxd<CR>
nnoremap <Leader>xr :%!xxd -r<CR>

" Window control
nnoremap <leader>t :tabe<CR>                            " open a new tab
nnoremap <leader>v :vnew<CR>                            " close tab
nnoremap <leader>tq :tabclose<CR>

" use ]+space create spaceline
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[

" Use <C-L> to clear the highlighting of :set hlsearch
if maparg('<C-L>', 'n') ==# ''
    nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
                                                                         endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               PluginConfigure                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"pathogen
execute pathogen#infect()

"echodoc
let g:echodoc#enable_at_startup=1

"easymotion
" <Leader>f{char} to move to {char}
map  <Leader><leader>f <Plug>(easymotion-bd-f)
nmap <Leader><leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap <leader><leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <leader><leader>l <Plug>(easymotion-bd-jk)
nmap <leader><leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader><leader>w <Plug>(easymotion-bd-w)
nmap <Leader><leader>w <Plug>(easymotion-overwin-w)

"asyncrun
" auto open quickfix window, height = 6
let g:asyncrun_open=6
let g:asyncrun_bell=1
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs' , 'build.xml']
nnoremap <F10> : call asyncrun#quickfix_toggle(6)<CR>
" commnent for I barely use cpp for now
" nnoremap <silent> <F9> : AsyncRun gcc -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <CR>
" nnoremap <silent> <F5> : AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <CR>
" nnoremap <silent> <F8> : AsyncRun -cwd=<root> -mode=4 make run <CR>
nnoremap <silent> <F7> : AsyncRun -cwd=<root> make run<CR>

"vim-latex-live-preview
autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'open -a Preview'

"vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"mhinz/vim-startify
let g:startify_list_order = [
            \ ['   Bookmarks'],     'bookmarks',
            \ ['   MRU'],           'files' ,
            \ ['   MRU '.getcwd()], 'dir',
            \ ['   Sessions'],      'sessions',
            \ ]
let g:startify_bookmarks = [
            \ '~/Desktop',
            \ '~/Documents/Coding/Test']
let g:startify_change_to_dir          = 0
let g:startify_enable_special         = 0
let g:startify_files_number           = 8
let g:startify_session_autoload       = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_persistence    = 1
let g:startify_use_env                = 1

"scrooloose/nerdtree
nnoremap <leader>ne :NERDTreeFind<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
let g:NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let g:NERDTreeChDirMode=2
let NERDTreeWinPos="left"
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeShowBookmarks=1
let g:NERDTreeIgnore=['\.pyc','\~$','\.swp','\.DS_Store']

"vim-table-mode
let g:table_mode_corner = '|'
let g:table_mode_delimiter = ' '
let g:table_mdoe_verbose = 0
let g:table_mode_auto_align = 0
"autocmd FileType markdown TableModeEnable

"vim-markdown-toc
let g:vmt_auto_update_on_save=1 "update toc when save
let g:vmt_dont_insert_fence=0 "if equals to 1, can't update toc when save

"gist-vim
let github_user='VDeamoV'

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

"Yggdroot/indentLine
let g:indentLine_enabled=1

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

"echodoc

"LightLine
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }


"vim-xkbswitch
let g:XkbSwitchEnabled     = 1
let g:XkbSwitchIMappings   = ['cn']
let g:XkbSwitchIMappingsTr = {'cn': {'<': '', '>': ''}}


"SirVer/ultisnips
"customize python and keymapping
"ref:https://gist.github.com/lencioni/dff45cd3d1f0e5e23fe6
"ref:https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
let g:UltiSnipsUsePythonVersion    = 2
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsListSnippets        = "<c-l>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:snips_author = "VDeamoV"
let g:snips_email = "vincent.duan95@outlook.com"
let g:snips_github = "https://github.com/VDeamoV"

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
let g:ycm_python_binary_path='/usr/bin/python3'
let g:ycm_server_python_interpreter='/usr/bin/python3'

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

"w0rp/ale
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
let g:ale_sign_eror = 'E'
let g:ale_sign_warning = 'W'
let g:ale_linters = {
\   'python': ['pylint'],
\   'tex': ['lacheck'],
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Basic Settings                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                                                        " not compatible for vi
set nospell                                                             " close spell examine
set number                                                              " show number 
set relativenumber                                                      "show relative line number
set hlsearch                                                            " Highlight the matching part
set incsearch                                                           " Shows the match while typing
set ignorecase
set smartcase
set showmatch                                                           " Show matching brackets/parenthesis
set encoding=utf-8                                                      " configure the encoding
set termencoding=utf-8                                                  " it will choose the first right configure to use
set fileencodings=utf-8,gbk,utf-16le,cp1252,iso-8859-15,ucs-bom
set fileformats=unix,dos,mac
set linespace=0                                                         " No extra spaces between rows
set confirm                                                             " Confirm before vim exit
set nobackup
set noswapfile
set lazyredraw                                                          " don't update the display while executing macros
set backspace=eol,start,indent                                          " use backspace for delete space line
set ruler                                                               " show the cursor's position
set nomodeline                                                          " disable mode lines (security measure)
set noshowmode                                                          " do not show Insert, We already have it in lightline
set mouse=a                                                             " allow mouse select and etc operation
set autoindent                                                          " config the indent
set smartindent
set smarttab
set copyindent
set tabstop=4  softtabstop=4 shiftwidth=4 expandtab
set history=1000                                                        " save 1000 cmd
set timeoutlen=500                                                      " give u 500 time to react for cmd
set list                                                                " show the special character
set guioptions=e                                                        "only show guitablabel
set autoread
set autowrite
set autowriteall                                                        " Auto-write all file changes
set iskeyword-=_,.,=,-,:,
set guifont=Source\ Code\ Pro\ for\ Powerline:h16
set switchbuf=useopen                                                   " reveal already opened files from the
                                                                        " quickfix window instead of opening new buffers
set wildmenu
set wildmode=list:longest,full
set nowrap                                                              " Do not wrap long lines
set whichwrap=b,s,h,l,<,>,>h,[,]                                        " Backspace and cursor keys wrap too
set t_Co=256                                                            " number of colors
"set autochdir                                                          "disable for leadf
set laststatus=2                                                        " always show statusline
set showtabline=2                                                       " always show tabline
set hidden
set display+=lastline
set noerrorbells novisualbell t_vb=                                     " cancel the annoying bell
set belloff=all
set showcmd                                                             " Show partial commands in status line and
" Selected characters/lines in visual mode
set viewoptions=folds,options,cursor,unix,slash                         " Better Unix / Windows compatibility
set virtualedit=onemore                                                 " used with caution of breaking plugins
set completeopt=menuone,menu,preview,longest
set tags=./tags;/,~/.vimtags
set dictionary+=/usr/share/dict/words                                   " autocompletion with dictionary help
set dictionary+=~/.vim/dict/
set statusline+=%*
set statusline+=%#warningmsg#
set shortmess+=filmnrxoOtT                                              " Abbrev. of messages (avoids 'hit enter')
filetype on
filetype plugin indent on

if has('syntax')
    syntax enable
endif

if has('clipboard')
    if has('unnamedplus')                                               " When possible use + register for copy-paste
        set clipboard=unnamed,unnamedplus
    else                                                                " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed
    endif
endif


set wildignore=*.o,*~,*.pyc,*.swp,*.bak,*.class,*.DS_Store              " vim will ignore them
if has('win16') || has('win32')
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

if !&scrolloff                                                          " Minimum lines to keep above and below cursor
    set scrolloff=1
endif

if !&sidescrolloff
    set scrolloff=5
endif


set colorcolumn=+1                                                      " color the 81 column for warning
" let &colorcolumn=join(range(81,999),',')
" let &colorcolumn='80,'.join(range(120,999),',')

" fold config
" foldmethod [diff, expr, indent, manual, marker, syntax]
" diff show the diff between unfold and fold
" expr use `foldexpr` to config fold logic
" indent fold base on indent
" manual use zf zF or :Fold to fold, zfa(,
"                     :mkview to save 
"                     :loadview to reload
" mark ....
" syntax
set foldmethod=manual
set foldlevel=99
set foldlevelstart=99

nnoremap <space> za
vnoremap <space> zf 

let gitroot = substitute(system('git rev-parse --show-toplevel'),'[\n\r]', '', 'g')                          " Make tags placed in .git/tags file available in all levels of a repository
if gitroot != ''
    let &tags = &tags . ',' . gitroot . '/.git/tags'
endif


" wrap config (not recommend
" formation options
" default is tcq 
" t: 根据 textwidth 自动折行
" c: 在（程序源代码中的）注释中自动折行，插入合适的注释起始字符
" r: 插入模式下在注释中键入回车时，插入合适的注释起始字符
" q: 允许使用"gq"命令对注释进行格式化；
" n: 识别编号列表，编号行的下一行的缩进由数字后的空白决定（与“2”冲突，需要“autoindent”）；
" 2: 使用一段的第二行的缩进来格式化文本；
" l: 在当前行长度超过 textwidth 时，不自动重新格式化；
" m: 在多字节字符处可以折行，对中文特别有效（否则只在空白字符处折行）；
" M: 在拼接两行时（重新格式化，或者是手工使用“J”命令），如果前一行的结尾或后一行的开头是多字节字符，则不插入空格，非常适合中文
" 
" set textwidth=80 "最大字符长度
" set formatoptions+=t
set formatoptions-=t "disable wrap
" set formatoptions-=l " wrap long lines
" if v:version > 703 || v:version == 703 && has('patch541')
"     set formatoptions+=j " Delete comment chars when join comment lines
" endif
" set wrapmargin=2 " 2 chars wrap margin from the right window border, hard wrap

" for tmux
if exists('$TMUX')
  set term=screen-256color
endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Functions                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=1 Rename let tpname = expand('%:t') | saveas <args> | edit <args> | call delete(expand(tpname))
command! -nargs=* Stab call Stab()

"普通模式和可视模式下&都代表着重复上一次搜索操作，同时保持上一次的搜索域
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" 可视模式下，用 * 和 # 搜索选中文本
xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-r>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-r>=@/<CR><CR>
function! s:VSetSearch()
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
    let @s = temp
endfunction

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
nnoremap _$ :call Preserve("%s/\\s\\+$//e")<CR> "clean space in the end of line 
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
"TODO: seperate compile and run 
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             FileType Conifgure                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd! BufNewFile,BufRead *.vs,*.fs set filetype=glsl
autocmd! BufNewFile,BufRead *.swift set filetype=swift
autocmd! BufNewFile,BufRead *.markdown *.md set filetype=markdown
autocmd! BufNewFile,BufRead,BufReadPost *.snippets set filetype=snippets
autocmd! BufNewFile,BufRead *.json set filetype=json
autocmd! BufNewFile,BufRead *.ts set filetype=typescript
autocmd! BufNewFile,BufRead *.vm *.xtpl *.ejs set filetype=html
autocmd! BufNewFile,BufRead *.html.twig set filetype=html.twig
autocmd! BufNewFile,BufRead *.conf set filetype=config
autocmd! BufRead,BufNewFile *.scss set filetype=scss.css
autocmd! BufNewFile,BufRead *.coffee set filetype=coffee
autocmd! BufNewFile,BufRead *.rss *.atom setfiletype xml
autocmd! BufNewFile,BufRead *.vm set ft=velocity
autocmd! BufNewFile,BufRead *.mako set ft=mako
autocmd! BufNewFile,BufRead *.tex set filetype=tex
autocmd! BufNewFile,BufRead *.bat
            \ if getline(1) =~ '--\*-Perl-\*--' | setf perl | endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  AutoCMD                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if &filetype != "gitcommit" && line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

" autocmd! BufWritePost .vimrc source ~/.vimrc                              " source vimrc immediately

autocmd! FileType gitcommit autocmd! BufEnter COMMIT_EDITMSG
            \ call setpos('.', [0, 1, 1, 0])                                " set it to the first line when editing a git commit message
autocmd! FileType css set omnifunc=csscomplete#CompleteCSS
autocmd Filetype *
            \if &omnifunc == "" |
            \setlocal omnifunc=syntaxcomplete#Complete |
            \endif
autocmd! FileType python syn keyword pythonDecorator True None False self

autocmd FocusGained, BufEnter * :silent! !

autocmd VimEnter * :call SetTabLabel()
autocmd WinEnter call SetTabLabel()
autocmd BufEnter call SetTabLabel()
"
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
" Automatically open and close the popup menu / preview window
autocmd CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" gnuplot syntax highlighting
autocmd BufNewFile,BufRead *.plt,.gnuplot setf gnuplot
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd FileType ruby set dictionary+=~/.vim/dict/ruby.dict
autocmd FileType javascript set dictionary+=$HOME/.vim/dict/node.dict

" 按照PEP8标准来配置vim
autocmd BufNewFile,BufRead *.py,*.cpp,*.java set tabstop=4 |set softtabstop=4|
            \ set shiftwidth=4|set textwidth=79|set expandtab|set autoindent
            \ |set fileformat=unix


"Let external space be red
highlight BadWhitespace guifg=gray guibg=red ctermfg=gray ctermbg=red
autocmd BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Themes                                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme Tomorrow-Night
" colorscheme PaperColor
colorscheme hybrid_material
" colorscheme anderson

