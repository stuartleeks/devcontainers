#!/bin/bash 
set -e

git clone https://github.com/magicmonty/bash-git-prompt.git $HOME/.bash-git-prompt --depth=1
echo "if [ -f \"$HOME/.bash-git-prompt/gitprompt.sh\" ]; then GIT_PROMPT_ONLY_IN_REPO=1 && source $HOME/.bash-git-prompt/gitprompt.sh; fi" >> "$HOME/.bashrc"
