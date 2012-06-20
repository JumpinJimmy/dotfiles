# Set git editor
export GIT_EDITOR=vim
export GIT_SANDBOX=~/.code/sandbox

# Wrap git with hub
if [[ -f `command -v hub` ]] ; then alias git=hub ; fi

# sandbox user/repo
function sandbox() {
  cd $GIT_SANDBOX && git clone $1 && cd `last_modified`
}

# Load hitch
hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch --unhitch'

alias g='git'
alias ga='git add .'
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete'
alias gc='git commit --all --verbose'
alias gco='git checkout'
alias gcot='git checkout --track'
alias gd='git pull'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias gh='git browse'
alias glola='git log --abbrev-commit --all --decorate --graph --pretty=oneline'
alias gm='git merge'
alias gmm='git merge master'
alias gn='git n'
alias gri='git rebase --interactive'
alias gs='git status --branch --short'
alias gsub='git submodule'
alias gu='git push'
