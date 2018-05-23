#!/bin/sh
# @author VDeamoV <Vincent.Duan95@gmail.com>


#Create a tmp dir
[[-d ~/tmp] || mkdir ~/tmp];

#Download Vim && Install
git clone https://github.com/vim/vim.git ~/tmp/vim;

cd ~/tmp/vim

./configure \
--enable-multibyte \
--enable-perlinterp \
--enable-rubyinterp \
--enable-pythoninterp \
--enable-python3interp \
--enable-luainterp \
--with-lua-prefix=/usr/local \
--enable-cscope \
--with-client-server \
--with-features=huge \
--with-x \
--enable-fontset \
--enable-largefile \
--disable-netbeans \
--with-compiledby="DeamoV" \
--enable-fail-if-missing;

make;

sudo make install;

vim --version | grep python;
vim --version | grep lua;

typein=$1

echo "Check it out, Does python&lua has + ?"
echo "If ok enter to continue, if not please ctrl+z or ctrl+c to stop"

if [typein=""]; then
	#download my vimrc && cp to ~/.vimrc
	[[ -d ~/tmp/vimrc ]] || mkdir ~/tmp/vimrc;
	git clone https://github.com/VDeamoV/VDeamoV-vimrc.git ~/tmp/vimrc;
	#back up
	cp ~/.vimrc ~/vimback;
	#cp to ~/.vimrc
	cp ~/tmp/vimrc/vimrc ~/.vimrc;
	#vundle
  [[ -d ~/.vim/bundle/Vundle.vim ]] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
  [[ -d ~/.vim/autoload ]] || mkdir ~/.vim/autoload;
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	#color schemes
	cd ~/tmp;
	[[ -d ~/tmp/vim-colorschemes ]] || git clone https://github.com/flazz/vim-colorschemes.git;
	[[ -d ~/.vim/colors ]] || mv ~/tmp/vim-colorschemes/colors ~/.vim/;

	#fonts !!maybe failed 
	cd ~/tmp;
	[[ -d ~/tmp/fonts ]] || git clone https://github.com/powerline/fonts.git;
	cd ~/tmp/fonts;
	sh ./install.sh;

	if type brew > /dev/null; then
		echo "Congratulations Brew Exists";
	else 
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
	fi;

	#We need ag
	brew install ack ag;

	#YouCompeteMe need manual Configure
	# YouCompleteMe supported
	if [[ -d ~/.vim/bundle/YouCompleteMe ]]; then
  		echo "YouCompleteMe Exists";
	else
  		git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe;
  		cd ~/.vim/bundle/YouCompleteMe;
  		echo "Congratulations you downloaded the YCM"
  		git submodule update --init --recursive
  		ehco "init Ready, Ready to install"
  		./install.py --all;
  		
  		cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/
  		
  		#fix error
  		if type python > /dev/null; then
  			brew unlink python;
  			brew link python;
  		fi

  		if type python@2 > /dev/null; then
  			brew unlink python@2;
  			brew link python@2;
  		fi
  		echo "Success"
	fi;

	#same like run :Plugin Install in the Vim
	vim +PluginInstall! +qall;

	echo "Finish the Install"

	echo "Try rm ~/tmp manually"

	ehco "Thanks for using"
fi;




























