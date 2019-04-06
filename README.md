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
Plug 'sillybun/vim-repl', {'do': './install.sh'}        " python <Leader-w>逐行执行
Plug 'sillybun/vim-async', {'do': './install.sh'}
Plug 'sillybun/zytutil'
Plug 'Shougo/echodoc.vim'                               " 参数提示
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
```
