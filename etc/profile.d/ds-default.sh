#!/bin/sh
export PATH=".:${HOME}/bin:/etc/custom/bin:/sbin:/usr/sbin:/usr/local/sbin:/usr/local/bin:${PATH}"

# bash shell prompt
export PS1='[\! \u@\h \W $?]\$ '

# Default editor
export EDITOR=vim

# dunno, perl doesn't like the default
export LANG="C"

# Default file creation mask
umask 002

# If vim is available, alias vi to vim
which vim >/dev/null 2>&1  && alias vi >/dev/null 2>&1 || alias vi=vim

# Some useful aliases
alias ls="ls -GP"
alias ll="ls -lFa"
alias pd=pushd
alias b='cd "${OLDPWD}"'
