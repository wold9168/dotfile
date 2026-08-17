#!/usr/bin/zsh

USER=wold9168
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd);
[[ "$SCRIPT_DIR" == "/home/${USER}" ]] || cp -a "$SCRIPT_DIR/." "/home/${USER}/"

git submodule update --init --remote
source .zshrc

# Zsh plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
