# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/bin:$HOME/.jenv/bin:$HOME/bin:$PATH:$HOME/.cargo/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="apple"
autoload -U promptinit; promptinit

plugins=(nvm) 

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

nvm() {
  unset -f nvm
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
  nvm "$@"
}

npm() {
  unset -f npm
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
  npm "$@"
}

node() {
  unset -f node
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
  node "$@"
}


jenv() {
  unset -f jenv
  eval "$(jenv init -)"
  jenv "$@"
}

alias portal="cd ~/AutoTrader/portal"
alias rt="cd ~/AutoTrader/retailer-tools"
alias gp="git push"
alias dcbu="docker-compose up --build"
alias g="gradle"
alias findv="fd --type f | fzf | xargs -o nvim"
alias brewinstall="brew search | fzf | xargs brew install"
alias vi="nvim"
alias psqlproxyprod="shippr project proxy -e prod postgres"
alias psqlproxypreprod="shippr project proxy -e preprod postgres"
alias grep="rg"

unsetopt beep                   # no bell on error
unsetopt bg_nice                # no lower prio for background jobs
unsetopt hist_beep              # no bell on error in history
unsetopt hup                    # no hup signal at shell exit
unsetopt ignore_eof             # do not exit on end-of-file
unsetopt list_beep              # no bell on ambiguous completion

# Lines added by shippr-cli installer
if [ $commands[shippr] ]; then
  source <(shippr completion zsh)
fi
# End of lines added by shippr-cli installer

alias vim=nvim
eval "$(zoxide init zsh)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/paul.nunnerley/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/paul.nunnerley/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/paul.nunnerley/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/paul.nunnerley/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
