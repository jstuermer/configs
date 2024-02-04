# set to superior editing mode
set -o vi

# keybindings
bind -x '"\C-l":clear'

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_DESCRIBE_STYLE="branch"
PS1='\[\e[35m\]\W\[\e[0m\]$(__git_ps1 "(%s)")\$ '

# aliases

alias v=vim

alias ..="cd .."

# ls
alias ls="ls -a --color=auto"
alias la="ls -lathr --color=auto"

# fzf
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias vf='v $(fp)'
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# git
alias gst="git status"
alias gf="git fetch"
alias gp="git pull"
alias gco="git checkout"
alias gl="git log"
alias glg="git log --stat"

# brew
if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
  fi
fi
