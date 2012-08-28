# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

#######################################################
# import the colors and aliases
#######################################################
. ~/bin/colors
. ~/bin/aliases

#######################################################
# puts git branch in the command prompt (along with the modified PS1 below)
#######################################################
. ~/bin/ps1-prep

#######################################################
# set the prompt
#######################################################
PROMPT_COMMAND=_ps1_prep

export JAVA_HOME=/usr/local/java
export PATH=$HOME/bin:$JAVA_HOME/bin:$PATH
export USERNAME='Jeffrey C. Hoyt'

# CDPATH  does for the cd built-in what PATH does for executables.  'cd mrald/mrald' from anywhere would take me to /home/jchoyt/devel/mrald/mrald
export CDPATH=.:~:~/devel

#  A colon-separated list of patterns used to decide which command lines to not save in history
export HISTIGNORE=ls:ll:su:cd:'cd -':'cd ..':exit

# only directories in bash tab-completion with cd command
complete -d cd

#######################################
#  If  set,  minor  errors  in the spelling of a directory component in a cd
#  command will be corrected.  The errors checked for are transposed characters, a
#  missing character, and one character too many.  If a correction is found, the
#  corrected  file  name  is printed, and the command proceeds.  This option is
#  only used by interactive shells.
#
#  shopt -p gives list of ther shell options that can be set
#######################################
shopt -s cdspell

export EDITOR=vim

#######################################
# configure history control
#######################################
# ignore both duplicates and whitespace
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=1500
export HISTFILESIZE=1500

#######################################
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#######################################
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
