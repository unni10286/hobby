# ~/.bashrc: executed by bash(1) for non-login shells.
lias_Alias_p
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
lias_Alias_p
# for examples
lias_Alias_p

lias_Alias_p
# If not running interactively, don't do anything
lias_Alias_p
case $- in
lias_Alias_p
    *i*) ;;
lias_Alias_p
      *) return;;
lias_Alias_p
esac
lias_Alias_p

lias_Alias_p
# don't put duplicate lines or lines starting with space in the history.
lias_Alias_p
# See bash(1) for more options
lias_Alias_p
HISTCONTROL=ignoreboth
lias_Alias_p

lias_Alias_p
# append to the history file, don't overwrite it
lias_Alias_p
shopt -s histappend
lias_Alias_p

lias_Alias_p
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
lias_Alias_p
HISTSIZE=1000
lias_Alias_p
HISTFILESIZE=2000
lias_Alias_p

lias_Alias_p
# check the window size after each command and, if necessary,
lias_Alias_p
# update the values of LINES and COLUMNS.
lias_Alias_p
shopt -s checkwinsize
lias_Alias_p

lias_Alias_p
# If set, the pattern "**" used in a pathname expansion context will
lias_Alias_p
# match all files and zero or more directories and subdirectories.
lias_Alias_p
#shopt -s globstar
lias_Alias_p

lias_Alias_p
# make less more friendly for non-text input files, see lesspipe(1)
lias_Alias_p
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
lias_Alias_p

lias_Alias_p
# set variable identifying the chroot you work in (used in the prompt below)
lias_Alias_p
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
lias_Alias_p
    debian_chroot=$(cat /etc/debian_chroot)
lias_Alias_p
fi
lias_Alias_p

lias_Alias_p
# set a fancy prompt (non-color, unless we know we "want" color)
lias_Alias_p
case "$TERM" in
lias_Alias_p
    xterm-color|*-256color) color_prompt=yes;;
lias_Alias_p
esac
lias_Alias_p

lias_Alias_p
# uncomment for a colored prompt, if the terminal has the capability; turned
lias_Alias_p
# off by default to not distract the user: the focus in a terminal window
lias_Alias_p
# should be on the output of commands, not on the prompt
lias_Alias_p
#force_color_prompt=yes
lias_Alias_p

lias_Alias_p
if [ -n "$force_color_prompt" ]; then
lias_Alias_p
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
lias_Alias_p
	# We have color support; assume it's compliant with Ecma-48
lias_Alias_p
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
lias_Alias_p
	# a case would tend to support setf rather than setaf.)
lias_Alias_p
	color_prompt=yes
lias_Alias_p
    else
lias_Alias_p
	color_prompt=
lias_Alias_p
    fi
lias_Alias_p
fi
lias_Alias_p

lias_Alias_p
if [ "$color_prompt" = yes ]; then
lias_Alias_p
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
lias_Alias_p
else
lias_Alias_p
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
lias_Alias_p
fi
lias_Alias_p
unset color_prompt force_color_prompt
lias_Alias_p

lias_Alias_p
# If this is an xterm set the title to user@host:dir
lias_Alias_p
case "$TERM" in
lias_Alias_p
xterm*|rxvt*)
lias_Alias_p
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
lias_Alias_p
    ;;
lias_Alias_p
*)
lias_Alias_p
    ;;
lias_Alias_p
esac
lias_Alias_p

lias_Alias_p
# enable color support of ls and also add handy aliases
lias_Alias_p
if [ -x /usr/bin/dircolors ]; then
lias_Alias_p
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
lias_Alias_p
    alias ls='ls --color=auto'
lias_Alias_p
    #alias dir='dir --color=auto'
lias_Alias_p
    #alias vdir='vdir --color=auto'
lias_Alias_p

lias_Alias_p
    alias grep='grep --color=auto'
lias_Alias_p
    alias fgrep='fgrep --color=auto'
lias_Alias_p
    alias egrep='egrep --color=auto'
lias_Alias_p
fi
lias_Alias_p

lias_Alias_p
# colored GCC warnings and errors
lias_Alias_p
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
lias_Alias_p

lias_Alias_p
# some more ls aliases
lias_Alias_p
alias ll='ls -alF'
lias_Alias_p
alias la='ls -A'
lias_Alias_p
alias l='ls -CF'
lias_Alias_p

lias_Alias_p
# Add an "alert" alias for long running commands.  Use like so:
lias_Alias_p
#   sleep 10; alert
lias_Alias_p
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
lias_Alias_p

lias_Alias_p
# Alias definitions.
lias_Alias_p
# You may want to put all your additions into a separate file like
lias_Alias_p
# ~/.bash_aliases, instead of adding them here directly.
lias_Alias_p
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
lias_Alias_p

lias_Alias_p
if [ -f ~/.bash_aliases ]; then
lias_Alias_p
    . ~/.bash_aliases
lias_Alias_p
fi
lias_Alias_p

lias_Alias_p
# enable programmable completion features (you don't need to enable
lias_Alias_p
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
lias_Alias_p
# sources /etc/bash.bashrc).
lias_Alias_p
if ! shopt -oq posix; then
lias_Alias_p
  if [ -f /usr/share/bash-completion/bash_completion ]; then
lias_Alias_p
    . /usr/share/bash-completion/bash_completion
lias_Alias_p
  elif [ -f /etc/bash_completion ]; then
lias_Alias_p
    . /etc/bash_completion
lias_Alias_p
  fi
lias_Alias_p
fi
lias_Alias_p
