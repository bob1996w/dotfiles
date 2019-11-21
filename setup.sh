# zsh setup
ln -s ~/dotfiles/zshrc ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# fcitx
sudo pacman -S fcitx fcitx-gtk2 fcitx-gtk3 fcitx-qt5 fcitx-ui-light fcitx-table-other
touch ~/.pam_environment
echo "GTK_IM_MODULE=fcitx" >> ~/.pam_environment
echo "QT_IM_MODULE=fcitx" >> ~/.pam_environment
echo "XMODIFIERS=@im=fcitx" >> ~/.pam_environment
