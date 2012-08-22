# To MacVim or Vim?
if [[ -f `command -v mvim` ]]; then
  VIM='mvim -v'
else
  VIM='vim'
fi

export EDITOR=$VIM
export GIT_EDITOR=$VIM
alias e=$EDITOR
