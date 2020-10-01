#!bin/bash
cd $HOME
REPOS="ppa:neovim-ppa/unstable"
INSTALL_PKGS="python python3 python3-pip snapd npm clang-tools clangd-$1 neovim git"

sudo add-apt-repository $REPOS
sudo apt update
sudo apt -y install  $INSTALL_PKGS

pip3 install pynvim
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-$1 100
snap install pyls
npm i -g bash_language_server #nowork

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
git clone "https://github.com/dzourn/nvim" $HOME/.config/

