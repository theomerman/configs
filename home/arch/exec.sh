### Basic archlinux install config file, replace "arch" with your username ### 
## install packages ##
## sudo pacman -S  xf86-video-amdgpu mesa vulkan-radeon plasma-meta git discord go networkmanager vim neovim wezterm zellij dolphin zsh docker luarocks lazygit fd ripgrep nodejs xclip npm python-neovim jdk-openjdk fastfetch

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
git clone https://github.com/theomerman/configs ~/setup
cd ~/setup/configs/home/arch/
cp ./ ~/ -r

## apply configs ##
# cp configs/home/arch/. ~/ -r

## changing shell ##
echo "\n zsh is in /usr/bin/zsh \n"
chsh

systemctl enable --now sddm.service

echo " download fonts from https://github.com/ryanoasis/nerd-fonts/releases/"
