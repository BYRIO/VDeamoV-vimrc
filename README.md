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


