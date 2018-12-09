# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="refined"
autoload -U promptinit; promptinit

plugins=(
  git,
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(jenv init -)"

alias portal="cd ~/AutoTrader/portal"
alias rt="cd ~/AutoTrader/retailer-tools"

unsetopt beep                   # no bell on error
unsetopt bg_nice                # no lower prio for background jobs
unsetopt hist_beep              # no bell on error in history
unsetopt hup                    # no hup signal at shell exit
unsetopt ignore_eof             # do not exit on end-of-file
unsetopt list_beep              # no bell on ambiguous completion
