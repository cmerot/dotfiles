#!/bin/bash
# see https://github.com/Laurelai/dotfiles/blob/master/install.sh
echo "checking for requirements"
if [ ! -f `which git` ] && [ ! -f `which curl` ]
then
  echo "could not install pre-requisites, please install them manually"
  echo "required: git curl"
  exit
else
  echo "requirements exist, proceeding to install phase..."
fi

if [ -d ~/.dotfiles ]
then
  echo "updating dotfiles..."
  cd ~/.dotfiles
  git pull
else
  echo "retrieving dotfiles..."
  cd ~
  git clone git://github.com/chocopoche/dotfiles.git .dotfiles
fi

FILES=".vimrc .bashrc .profile .bash_aliases .bash_completion .vim .gitconfig"
for i in $FILES; do
  echo installing: ~/.dotfiles/$i ~/$i
  rm -rf ~/$i
  ln -s ~/.dotfiles/$i ~/$i
done

echo "installation complete"
echo "You may want to run \`git config --global github.password 'your github password'\`"
echo "to setup your github password"
