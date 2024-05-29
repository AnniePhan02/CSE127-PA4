# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

alias cd..="cd .."
alias ..="cd .."
alias g="git"

# use like 'viewcsv foo.csv'
viewcsv() {
  cat $@ | sed -e 's/,,/, ,/g' | column -s, -t | less -#2 -N -S
}

ml() {
  (make $@ && echo -e "\e[32m\e[1mBuild succeeded\e[0m") 2>&1 | less -R
}

alias ls="echo Access denied"
PS1="\u:\w🐱💻 "
