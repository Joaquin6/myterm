#!/bin/zsh

# If Tmux Plugin Manager is not installed - clone it
if [[ ! -d ~/.tmux/plugins/tpm/.git ]]; then
    git clone git@github.com:tmux-plugins/tpm.git ~/.tmux/plugins/tpm
fi