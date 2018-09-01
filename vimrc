"{vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
"vim-go | go settings `go get -u github.com/golang/lint`
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
call vundle#begin()
"{plugins

"Python 自动pep8风格
Plugin 'tell-k/vim-autopep8' "need to install autopep

"Cpp Plugin
Plugin 'octol/vim-cpp-enhanced-highlight'

"Markdowm
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mzlogin/vim-kramdown-tab' "fix for kramdown
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'dhruvasagar/vim-table-mode'

"Blog
Plugin 'tpope/vim-liquid'

"Swift
Plugin 'keith/swift.vim'

"go
Plugin 'fatih/vim-go'

"Compile
"Plugin 'dmdque/solidity.vim'
"solidity Type:make from a .sol file
"Plugin 'groenewege/vim-less'
"js extend less,need install less npm install less
Plugin 'xuhdev/vim-latex-live-preview'
"Github
Plugin 'tpope/vim-fugitive'
"Debuge For PHP,Pyton,Perl,Ruby,Tcl and NodeJS,etc
"Plugin 'joonty/vdebug'

"FileManage
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher' "Only this enable ,can ctrlp work
Plugin 'mhinz/vim-startify'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"search
Plugin 'Chun-Yang/vim-action-ag'
"Plugin 'mileszs/ack.vim'
Plugin 'airblade/vim-gitgutter'
"Plugin 'mhinz/vim-grepper'
Plugin 'rking/ag.vim'
Plugin 'dyng/ctrlsf.vim'



"Brackets Jump 智能补全括号和跳转
Plugin 'Raimondi/delimitMate' "补全括号 shift+tab出来
Plugin 'vim-scripts/matchit.zip' " %  g% [% ]% a%
Plugin 'tmhedberg/SimpylFold'

"Shougo's Plugins Don't know how to use
"Plugin 'Shougo/neocomplete.vim' "和YCM重复了
"Plugin 'Shougo/unite.vim' "搜索文件
"Plugin 'Shougo/vimproc.vim'
"Plugin 'Shougo/vimshell.vim'
"Plugin 'Shougo/vimfiler.vim'

"Valloric's Plugin
"Plugin 'Valloric/MatchTagAlways'

"代码补全
Plugin 'Valloric/YouCompleteMe'
"Plugin 'marijnh/tern_for_vim'
"增强YCM的JavaScript omnifunc

"Snippet 智能输入
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/deoplete.nvim'
if !has('nvim')
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'

"syntastice 代码检查&格式检查
"Plugin 'jaxbot/syntastic-react'
Plugin 'scrooloose/syntastic'
"syntastic 需要checker安装，js是eslint，html是tidy，css是stylelint
"并在下文中配置
"Plugin 'myint/syntastic-extras'
"Plugin 'einars/js-beautify'
"Plugin 'maksimr/vim-jsbeautify'

"Commenter 智能注释
Plugin 'ddollar/nerdcommenter'
Plugin 'editorconfig/editorconfig-vim'


"Coding Reading 阅读代码的插件
Plugin 'majutsushi/tagbar'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'Yggdroot/indentLine' "缩进的虚线
Plugin 'bling/vim-bufferline' "为打开的文件有一个快捷栏
Plugin 'kshenoy/vim-signature' "书签可视化

"Coding Highlight
"Plugin 'tomlion/vim-solidity'
"solidity Syntax
"Plugin 'hail2u/vim-css3-syntax'
"Plugin 'pangloss/vim-javascript'
"Plugin 'mxw/vim-jsx' "react

"Plugin 'airblade/vim-rooter'

"Plugin 'dhruvasagar/vim-vinegar'
"Plugin 'docunext/closetag.vim'
"Plugin 'editorconfig/editorconfig-vim'

"Plugin 'godlygeek/tabular'
"Plugin 'itchyny/calendar.vim'
"Plugin 'juneedahamed/svnj.vim'
"Plugin 'michalliu/jsruntime.vim'
"Plugin 'michalliu/sourcebeautify.vim'
"Plugin 'moll/vim-node'
"Plugin 'noscripter/tabman.vim'
"Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'sheerun/vim-polyglot'
"Plugin 'tomtom/tcomment_vim'
"Plugin 'tpope/vim-endwise'
"Plugin 'tpope/vim-surround'
"Plugin 'xolox/vim-shell'
"Plugin 'xolox/vim-easytags'
"Plugin 'xolox/vim-misc'
"Plugin 'vim-scripts/Conque-Shell'
"Plugin 'edkolev/promptline.vim'
"Plugin 'sjl/clam.vim'
"Plugin 'ervandew/screen'
"Plugin 'idbrii/AsyncCommand'
"Plugin 'sjl/gundo.vim'
"Plugin 'mattn/webapi-vim'
"Plugin 'sidorares/node-vim-debugger'
"Plugin 'ryanoasis/vim-devicons'
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'othree/html5-syntax.vim'
"Plugin 'othree/html5.vim'
"Plugin 'claco/jasmine.vim'
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'othree/yajs.vim'
"Plugin 'othree/es.next.syntax.vim'
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'zenorocha/dracula-theme'
"Plugin 'jdkanani/vim-material-theme'
"Plugin 'kristijanhusak/vim-hybrid-material'
"Plugin 'google/vim-colorscheme-primary'
"Plugin 'tpope/vim-haml'
"Plugin 'gregsexton/git/'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'justinmk/vim-dirvish'
"Plugin 'AndrewRadev/splitjoin.vim'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'tpope/vim-rails'
"Plugin 'tpope/vim-scriptease'
"Plugin 'ynkdir/vim-vimlparser' "required by vimlint
"Plugin 'tacahiroy/ctrlp-funky'
"Plugin 'chemzqm/unite-js-func'
"Plugin 'syngan/vim-vimlint'
"Plugin 'chrisbra/NrrwRgn'
"Plugin 'mhinz/vim-signify'
"Plugin 'mhinz/vim-sayonara'
"Plugin 'greyblake/vim-preview'
"Plugin 'guileen/vim-node-dict'
"Plugin 'HerringtonDarkholme/yats.vim'
"Plugin 'junegunn/vim-easy-align'
"Plugin 'mattn/excelview-vim'
"Plugin 'mattn/vim-maketable'
"Plugin 'michalliu/jsoncodecs.vim'
"Plugin 'vim-scripts/JavaScript-Indent'
"Plugin 'ntpeters/vim-better-whitespace'
"Plugin 'nvie/vim-flake8'
"Plugin 'ryanss/vim-hackernews'
"Plugin 'tpope/vim-obsession'
"Plugin 'dhruvasagar/vim-prosession'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'garyburd/go-explorer'
"Plugin 'zchee/deoplete-go'
"Plugin 'wincent/command-t'

"Plugin Manager
Plugin 'VundleVim/Vundle.vim'

"}
call vundle#end()
"}

"{Basic settings
set nospell
"关闭拼写检查
set nu
"显示行号
set relativenumber
"show relative line number
set ffs=unix,dos,mac
set hlsearch
set incsearch
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
if has("win16") || has("win32")
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
set nowrap      " Do not wrap long lines
set backspace=eol,start,indent
if has('syntax')
  syntax enable
endif
set textwidth=80
let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")
set colorcolumn=+1
set autoindent
set smartindent
set smarttab
set ruler
if has("gui_macvim")            "autocmd GUIEnter * set fullscreen
  set fuoptions=maxvert,maxhorz
  set transparency=10
endif
set cursorcolumn
set cursorline
set autochdir
set laststatus=2  " always show statusline
set showtabline=2 " always show tabline
set hidden
" enables filetype based indentation
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
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
if v:version > 703 || v:version == 703 && has("patch541")
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
let mapleader=';'

" 定义移动到行首行尾
nmap LB 0
nmap LE $

"窗口跳转
"向右，向左,向上，向下
nnoremap <Leader>lw <C-W>l
nnoremap <Leader>hw <C-W>h
nnoremap <Leader>kw <C-W>k
nnoremap <Leader>jw <C-W>j

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
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
"noremap <Leader>W :w !sudo tee % > /dev/null
" Quickly edit/reload the vimrc file
nnoremap <leader>ev :tabe $MYVIMRC<CR>
"fast find vimrc
nnoremap <space> za
vnoremap <space> zf
"Both are fold the function
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
nnoremap <leader>t :tabe<cr>
"open a new tab
nnoremap <leader>tm :echo strftime('%c')<cr>
"show time now
nnoremap <leader>v :vnew<cr>
"open new
nnoremap <leader>tq :tabclose<cr>
"close tab

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

"{Plugin settings

"autoPep
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

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

"vim-jsx
"let g:jsx_ext_required = 1

"scrooloose/syntastic
"now python cpp html json php is working
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open=0
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_wq=0
"let g:syntastic_enable_signs=1
"let g:syntastic_aggregate_errors=1

let g:syntastic_error_symbol="E"
let g:syntastic_warning_symbol="W"

highlight SyntasticError guibg=#2F0000

nnoremap <leader>n :lnext<CR>
nnoremap <leader>p :lprevious<CR>
"prerequisite:
"  npm packages:
"    eslint jsxhint babel-eslint eslint-plugin-react json-lint jshint
"let g:syntastic_javascript_checkers = ['eslint',
"    \'jsxhint', 'babel-eslint', 'eslint-plugin-react', 'json-lint',
"    \'jshint', 'jscs']
"let g:syntastic_json_checkers=['jsonlint']

"Python
let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_python_python_exec="/usr/local/bin/python3"

"swift
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
"let g:syntastic_sass_checkers = ['sass', 'sassc']

"Latex
let g:syntastic_tex_checkers = ['lacheck']

let g:syntastic_scss_checkers = ['sass', 'sassc', 'scsslint']
let g:syntastic_php_checkers = ['php']
"let g:syntastic_ruby_checkers = ['robocop']
"let g:syntastic_coffee_checkes = ['coffeelint']
let g:syntastic_shell_checkers = ['shellcheck']

" Set up the arrays to ignore for later
"if !exists('g:syntastic_html_tidy_ignore_errors')
  "let g:syntastic_html_tidy_ignore_errors = []
"endif

"if !exists('g:syntastic_html_tidy_blocklevel_tags')
"let g:syntastic_html_tidy_blocklevel_tags = []
"endif
" " Try to use HTML5 Tidy for better checking?
"let g:syntastic_html_tidy_exec = '/usr/bin/tidy'
" AP: honestly can't remember if this helps or not
" installed with homebrew locally

" Ignore ionic tags in HTML syntax checking
" See http://stackoverflow.com/questions/30366621
" ignore errors about Ionic tags
"let g:syntastic_html_tidy_ignore_errors += ["<ion-",discarding unexpected </ion-"]
" Angular's attributes confuse HTML Tidy
"let g:syntastic_html_tidy_ignore_errors += [" proprietary attribute \"ng-"]
" Angular UI-Router attributes confuse HTML Tidy
"let g:syntastic_html_tidy_ignore_errors += [" proprietary attribute \"ui-sref"]
" Angular in particular often makes 'empty' blocks, so ignore
" this error. We might improve how we do this though.
" See also https://github.com/scrooloose/syntastic/wiki/HTML:---tidy
" specifically g:syntastic_html_tidy_empty_tags
"let g:syntastic_html_tidy_ignore_errors += ["trimming empty "]
" Angular ignores
"let g:syntastic_html_tidy_blocklevel_tags += ['ng-include', 'ng-form']
" Angular UI-router ignores
"let g:syntastic_html_tidy_ignore_errors += [" proprietary attribute \"ui-sref"]

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

"Tagbar
"
nmap <F8> :TagbarToggle<CR>
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
      \ '~/Documents/Github/FunChain',
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

"CtrlP
"""""""""""""""""""""""""
if exists(':CtrplP')
  let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn)$',
        \ 'dir': 'node_modules\|bower_components',
        \ 'file': '\v\.(exe|so|dll)$',
        \ 'link': 'some_bad_symbolic_links',
        \ }
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " modify for spf13
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_cache_omnifunc=0
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_complete_in_comments = 1
"leave '<tab>', '<c-j>' for ultisnips
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
"leave '<s-tab>', '<c-k>' for ultisnips
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
nnoremap <leader>lo :lopen<CR>
nnoremap <leader>lc :lclose<CR>

" 开启各种补全引擎
let g:ycm_collect_identifiers_from_tags_files=1         " 开启 YCM 基于标签引擎
let g:ycm_auto_trigger = 1                  " 开启 YCM 基于标识符补全，默认为1
let g:ycm_seed_identifiers_with_syntax=1                " 开启 YCM 基于语法关键字补全
let g:ycm_complete_in_comments = 1              " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1               " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0 " 注释和字符串中的文字也会被收入补全

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
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

" mileszs/ack.vim
"" Use The Silver Searcher over grep, iff possible
"if executable('ag')
"" Use ag over grep
"set grepprg=ag\ --nogroup\ --nocolor
"endif

"gitgutter
let g:gitgutter_max_signs=900
let g:gitgutter_override_sign_column_highlight = 0
"editorconfig-vim
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:EditorConfig_verbose = 0
"optional values are: ['fill', 'line', 'none']
let g:EditorConfig_max_line_indicator = "fill"
let g:EditorConfig_exec_path = "/usr/local/bin/editorconfig"

"maksimr/vim-jsbeautify
"  map <c-f> :call JsBeautify()<cr>

"autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
"autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
"autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
"autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
"autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
"autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
"autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
"autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
"autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
"autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

"ctrlp-py-matcher
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

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
"let g:javascript_conceal_static     = "•"
"let g:javascript_conceal_super      = "Ω"

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

"vim-action-ag
" use * to search current word in normal mode
nmap * <Plug>AgActionWord
" use * to search selected text in visual mode
" vmap * <Plug>AgActionVisual

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
"查看当前的锁紧情况
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
if exists("+showtabline")
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
  let l = line(".")
  let c = col(".")
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
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    exec "!time python3 ./%"
  elseif &filetype == 'html'
    exec "!open -a Safari % &"
  elseif &filetype == 'go'
    exec "!go build %<"
    exec "!time go run %"
  elseif &filetype == 'markdown'
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
autocmd FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
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
"}

