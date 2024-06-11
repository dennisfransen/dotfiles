export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Config aliases
alias confz="cd ~/ && v ~/.zshrc"

# Dir aliases
alias dev="cd ~/development"
alias golang="cd ~/development/golang"
alias script="cd ~/development/scripts"
alias karaten="cd ~/development/trinax/app.karatenbygg.se"

# Git aliases
alias gs="git status"
alias gp="git pull"
alias gpsh="git push"
alias gpshf="git push --force"
alias gc="git checkout"
alias gcb="git checkout -b"
alias gcm="git commit -m"
alias gaa="git add ."

# PNPM aliases
alias pm="pnpm"

# Neovim aliases
alias v="nvim"

# Tmux aliases
alias t="tmux"
alias ta="tmux a"
alias tls="tmux ls"

# Docker aliases
alias dstart="docker compose up -d"
alias dstop="docker compose stop"
alias king="docker exec -it appkaratenbyggse-php-1 bash"

# SSH aliases
alias @karaten="ssh dennis@10.7.11.102"
alias @karatena="ssh -A dennis@10.7.11.102"
alias @karatendb="ssh dennis@10.7.11.132"
alias @sftp="sftp dennis@10.7.11.102"
alias @karatenMinio="ssh dennis@10.7.11.102 -L 9004:localhost:9004"
alias @sfk="ssh trinax@app.fastighetskalendern.se" 

# UUIDGEN lowercase
alias uuid="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]'  | pbcopy && pbpaste && echo"

# Air
alias air='~/go/bin/air'

if [ -d "/opt/homebrew" ]; then
  export NVM_DIR="$HOME/.nvm"
    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  

  # This loads nvm bash_completion
  export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
  export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"
fi

export PATH=~/.composer/vendor/bin:$PATH

