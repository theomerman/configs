### Basic archlinux install config file, replace "arch" with your username ### 

## Enable docker ##
sudo systemctl enable docker.service

## add user to basic groups - only root execution ##
#usermod -aG docker,lp,wheel arch
  
## install neovim for npm ##
sudo npm i -g neovim

## clone oh-my-zsh ##
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## clone zsh-autosuggestions ##
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

## clone lazyvim ##
git clone https://github.com/LazyVim/starter ~/.config/nvim

## clone configs ##

# git clone https://github.com/theomerman/configs ~/setup
cp ../ /home -r

## changing shell (optional) -> oh-my-zsh makes this change ##
# echo "\n zsh is in /usr/bin/zsh \n"
# chsh

## enable desktop environment (optional) ##
systemctl enable --now sddm.service

echo " download fonts from https://github.com/ryanoasis/nerd-fonts/releases/"
