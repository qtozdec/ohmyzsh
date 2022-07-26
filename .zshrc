export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bureau"

plugins=(
  dotenv
  composer 
  web-search
  docker
  docker-compose
  z
  aliases
  sudo
  zsh-interactive-cd
  copyfile
  dirhistory
  zsh-autosuggestions
)

ZSH_WEB_SEARCH_ENGINES=(
    ya "https://yandex.ru/yandsearch?text="
)
source $ZSH_CUSTOM/autols.zsh

#. ~/.oh-my-zsh/custom/plugins/z.sh
#. ~/.oh-my-zsh/custom/plugins/ls.zsh
source $ZSH/oh-my-zsh.sh

alias py="python3"
alias c="code .";
alias ll="ls -la";
alias home="cd ~";
alias zshrc='code ~/.zshrc'
alias h="history"
alias myip="curl http://ipecho.net/plain; echo"
#alias dirs='dirs -v | head -10'
alias usage='du -h -d1'
alias update="source ~/.zshrc"
alias sshdir="cd ~/.ssh"
alias desktop="/mnt/c/Users/Qtozdec/Desktop"
#alias md="mkdir "
#alias ..='cd ..'
#alias ...='cd ../..'
