if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
  exec startx &>/dev/null 
fi

##################################
############# NVIDIA #############
##################################
export __GL_SHADER_DISK_CACHE_SKIP_CLEANUP=1
export __GL_SHADER_DISK_CACHE_SIZE=100000000000

##################################
############ CLIPMENU ############
##################################
export CM_SELECTIONS="clipboard"
export CM_OUTPUT_CLIP=0
export CM_MAX_CLIPS=10
CM_LAUNCHER=rofi

##################################
############# PROMPT #############
##################################
#6c7086
PROMPT='%F{8}$%f '
PROMPT='%F{#bb9af7}%1~%f %F{White}%f  '

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

##################################
############# BÁSICO #############
##################################

autoload -U compinit
compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

xset r rate 300 50
PATH=$PATH:$HOME/Others/Scripts

##################################
############# ALIAS ##############
##################################

# Zsh commands
alias la='ls -a'
alias ll='ls -l'
alias ls='ls --color=auto'
alias rm='sudo rm -r'
alias cp='cp -r'
alias wmclass='xprop | grep WM_CLASS'

# GIT
alias gs='git status'
alias ga='git add .'
alias gm='git commit -m'
alias gp='git push -u origin main'

# XBPS
alias xr='sudo xbps-remove'
alias xrr='sudo xbps-remove -Rcon'
alias xro='sudo xbps-remove -Oo'
alias xl='sudo xbps-install'
alias xq='xbps-query'
alias xqrs='xbps-query -Rs'
alias xu='xl -Su'
alias xusrc='cd /home/andrade/Others/void-packages && git pull && ./xbps-src update-sys'

# Aplicativos
alias vim='nvim'
alias reader='devour mupdf'
alias ani='ani-cli'
alias mov='mov-cli'
alias vis='cli-visualizer'
alias updatedb='sudo updatedb'
alias downgrade='sudo downgrade'
alias neofetch='neofetch --source ~/Others/seahorse.txt'
alias fl='sudo flatpak update'
#neofetch --source ~/Others/seahorse.txt

##################################
############# COLORS #############
##################################

#LS_COLORS='rs=0:di=1;97:fi=1;90';
LS_COLORS='rs=0:di=1;34:fi=1;30:ln=1;34'
export LS_COLORS

##################################
############ PIPEWIRE ############
##################################
export PIPEWIRE_LATENCY=128/48000

##################################
############## XDEB ##############
##################################


export XDEB_OPT_DEPS=true
export XDEB_OPT_SYNC=true
export XDEB_OPT_WARN_CONFLICT=true
export XDEB_OPT_FIX_CONFLICT=true

##################################
########## TEST MIRRORS ##########
##################################

# PATH.
#export PATH=$HOME/bin:$PATH

source /home/andrade/.cache/bwsession
