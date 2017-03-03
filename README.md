# myterm
Dotfiles and few ideas/plugins I use to maintain my scripts and configuration.

## Installation
I store my dotfiles in Git on my own GitLab server at home. On any computer with zsh I clone my repository in `~/.dotfiles`

```
git clone \
    ssh://git@gitlab.example.com/Joaquin6/repo.git \
    ~/.dotfiles \
    --recursive
```

## vimrc
My `vimrc` file, just use it for reference, don’t try to really use it, I modify it once in a
week, update something, change something, it is maybe even broken right now

I use [vundle](https://github.com/VundleVim/Vundle.Vim) for plugins.
__Oh-my-Zsh__ also has plugin for vundle, it allows to run `vundle-update` to update all plugins.

Link to my [vim cheatsheet](https://vim.rtorr.com/).