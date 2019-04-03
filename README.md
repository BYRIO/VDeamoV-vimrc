Welcome to MyVimrc
==================
Vim Installation
----------------
### For Mac
```bash
brew install vim --with-lua --with-python
pip3 install autopep8
pip3 install pylint
```
### For Ubuntu
1. Install for Prerequisites
```bash
sudo apt-get install liblua5.1-dev \
                     luajit libluajit-5.1 \
                     python-dev ruby-dev\
                     libperl-dev libncurses5-dev\
                     libatk1.0-dev libx11-dev\
                     libxpm-dev libxt-dev
sudo mkdir /usr/include/lua5.1/include
sudo cp /usr/include/lua5.1/*.h /usr/include/lua5.1/include/
```
2. Download VIM from github
```bash
git clone https://github.com/vim/vim ~/vim
cd ~/vim
git pull && git fetch
cd ~/vim/src
make distclean
./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-largefile \
            --disable-netbeans \
            --enable-pythoninterp \
            --enable-perlinterp \
            --enable-luainterp \
            --with-luajit \
            --enable-fail-if-missing \
            --enable-cscope
make
sudo make install
```
3. Check VIM
```bash
vim --version
# check if there is + in front of the lua and python
```
PluginInstall
------------
1. Git from this repository
```bash
git clone https://github.com/VDeamoV/VDeamoV-vimrc.git ~/.vim
cd ~/.vim
git clone https://github.com/powerline/fonts.git ~/.vim/fonts
cd ~/.vim/fonts
sudo ./install.sh # install fonts for the themes
cp ~/.vim/vimrc ~/.vimrc
```
2. Install Plugs
  - After enter the vim, use the commond below
    ```bash
    :PlugInstall
    ```
  - Configure for YCM
    ```bash
    cd ~/.vim/plugged/YouCompleteMe/
    git submodule update --init --recursive
    sudo ./install.py -all
    ```

Startify
-------
*You need to modify the startify configure in the vimrc*

ColorScheme
-----------
- *Search colorscheme in the vimrc to find my configure*
- *use `:colorscheme` then tab to see other scheme*
- *<leader>bg to change the daymode and nightmode*
  My <leader> is `,`, you can modify it in the vimrc


PluginList
---------
```bash
"{Plugstall with Plug
" 中英切换问题（Mac
Plug 'lyokha/vim-xkbswitch', {'as': 'xkbswitch'}

"AutoFix Sytle
Plug 'hotoo/pangu.vim', {'for': ['markdown']} "to make your document better

"textobj
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java', 'python'] }
Plug 'sgur/vim-textobj-parameter'

"Cpp Plug
Plug 'octol/vim-cpp-enhanced-highlight', {'for':['c', 'cpp']}

"Markdowm
Plug 'godlygeek/tabular', {'for': ['markdown']}
Plug 'plasticboy/vim-markdown', {'for': ['markdown']}
Plug 'mzlogin/vim-kramdown-tab', {'for': ['markdown']} "fix for kramdown
"Use <leader>tab to use
Plug 'mzlogin/vim-markdown-toc', {'for': ['markdown']}
":UpdateToc 更新目录
Plug 'dhruvasagar/vim-table-mode', {'for': ['markdown']}

"Blog
Plug 'tpope/vim-liquid'

"Swift
Plug 'keith/swift.vim',{'for':['swift']}

"Github
Plug 'tpope/vim-fugitive'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
" visit github in vim
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }

"Compile
"js extend less,need install less npm install less
Plug 'xuhdev/vim-latex-live-preview', {'for': ['tex']}
Plug 'lervag/vimtex', {'for': ['tex']}
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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify' "代替gitgutter
Plug 'dyng/ctrlsf.vim'
Plug 'rizzatti/dash.vim'
Plug 'tpope/vim-abolish' "增强版的substitue


"Brackets Jump 智能补全括号和跳转
Plug 'Raimondi/delimitMate' "补全括号 shift+tab出来
Plug 'vim-scripts/matchit.zip' " %  g% [% ]% a%
" Plug 'tpope/vim-surround'

"代码补全
"TagsGenerator
Plug 'ludovicchabant/vim-gutentags'
Plug 'Valloric/YouCompleteMe'
Plug 'marijnh/tern_for_vim',{ 'for' : 'javascript'}
"增强YCM的JavaScript omnifunc


""Snippet 智能输入
Plug 'SirVer/ultisnips'
Plug 'VDeamoV/vim-snippets'


""动态检查
Plug 'w0rp/ale' "代替syntastic的选择


""Commenter 智能注释
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-commentary'


"Coding Reading 阅读代码的插件
Plug 'Yggdroot/LeaderF'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'Yggdroot/indentLine' "缩进的虚线
Plug 'bling/vim-bufferline' "为打开的文件有一个快捷栏
Plug 'kshenoy/vim-signature' "书签可视化

"Other Setting
Plug 'terryma/vim-multiple-cursors'

" python <Leader-w>逐行执行
Plug 'sillybun/vim-repl', {'do': './install.sh'}
Plug 'sillybun/vim-async', {'do': './install.sh'}
Plug 'sillybun/zytutil'

" 参数提示
Plug 'Shougo/echodoc.vim'
```
