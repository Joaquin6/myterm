#!/bin/zsh

# Change shell for current user to zsh
if [ ! "$SHELL" = "/bin/zsh" ]; then
  chsh -s /bin/zsh
fi

# remove old dot files
rm ~/.gitconfig
rm ~/.gitignore_global
rm ~/.tmux.conf
rm ~/.vimrc
rm ~/.zshrc

# link new dot files
ln ~/.dotfiles/dots/home/gitconfig               ~/.gitconfig
ln ~/.dotfiles/dots/home/gitignore_global        ~/.gitignore_global
ln ~/.dotfiles/dots/home/tmux.conf               ~/.tmux.conf
ln ~/.dotfiles/dots/home/vimrc                   ~/.vimrc
ln ~/.dotfiles/dots/home/zshrc                   ~/.zshrc

ln -s ~/.dotfiles/plugins/lambda-pure/lambda-pure.zsh ~/.dotfiles/dots/zsh/zfunctions/prompt_lambda-pure_setup
ln -s ~/.dotfiles/plugins/lambda-pure/async.zsh ~/.dotfiles/dots/zsh/zfunctions/async

# Do special to sync sublime settings on OS X
if [[ "$OSTYPE" =~ "darwin" ]]; then
  rm ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

  ln -s ~/.dotfiles/settings/SublimeText/User      ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
fi

# install powerline fonts
~/.dotfiles/powerline-fonts/install.sh

# Symlink (or copy) lambda-pure.zsh to ~/.oh-my-zsh/custom/themes/lambda-pure.zsh-theme.
# Set ZSH_THEME="lambda-pure" in your .zshrc file.
copy ~/.dotfiles/plugins/lambda-pure/lambda-pure.zsh ~/.oh-my-zsh/custom/themes/lambda-pure.zsh-theme

#!/bin/zsh

# It takes control, so load last
# Load only when we are default user (not root) and not in ssh
if [[ ${DEFAULT_USER} == ${USER} ]] && [[ -z ${SSH_CLIENT} ]]; then
    source $ZSH/plugins/tmux/tmux.plugin.zsh
fi