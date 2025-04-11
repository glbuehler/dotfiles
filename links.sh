
ln -sf ~/dotfiles/bashrc ~/.bashrc
ln -sf ~/dotfiles/bash_aliases ~/.bash_aliases
ln -sf ~/dotfiles/profile ~/.profile
ln -sf ~/dotfiles/gitconfig ~/.gitconfig

mkdir -p ~/.config/ghostty
ln -sf ~/dotfiles/ghostty/config ~/.config/ghostty/config

mkdir -p ~/.config/tmux
ln -sf ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf

mkdir -p ~/.config/i3
ln -sf ~/dotfiles/i3/config ~/.config/i3/config

mkdir -p ~/.config/gtk-3.0
ln -sf ~/dotfiles/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini

mkdir -p ~/.config/gtk-4.0
ln -sf ~/dotfiles/gtk-4.0/settings.ini ~/.config/gtk-4.0/settings.ini

mkdir -p ~/.config
ln -sdf ~/dotfiles/nvim/ ~/.config/nvim
