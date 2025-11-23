eval "$(starship init zsh)"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lilja/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias hx='helix'
alias man='batman'
alias x11='GDK_BACKEND=x11'
alias anime='cd /mnt/16TB/Videot/Anime'
alias tv='cd /mnt/8TB/Videot/TV\ Shows'
alias music='cd /mnt/8TB/Musiikki'
alias sanova='cd /home/lilja/Asiakirjat/Yliopisto/COMP.CS.610/sanova-puheterapiasovellus.github.io'
alias part2='cd /home/lilja/Asiakirjat/Yliopisto/COMP.CS.120/part2'
