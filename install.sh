# upgrade system 
sudo pacman -Sy

# install zsh
sudo pacman -S zsh

# set default shell to zsh
sudo chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install p10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git $HOME
cd yay
makepkg -si

# install polybar
yay -S polybar

# install rofi and set dracula theme
sudo pacman -S rofi
git clone https://github.com/dracula/rofi $HOME
cp rofi/theme/config1.rasi ~/.config/rofi/config.rasi

# install nvim
sudo pacman -S neovim

# install vim-plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# install stow
sudo pacman -S stow

# stow files
stow $HOME/.dotfiles/zsh #zsh
stow $HOME/.dotfiles/nvim #nvim

