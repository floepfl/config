# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
fpath+=("$HOME/.zsh/pure")
autoload -U promptinit; promptinit
prompt pure

# Path to your oh-my-zsh installation.
export ZSH="/home/flo/.oh-my-zsh"
#export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.gem/ruby/2.6.0/bin
export I3B=$HOME/.config/i3blocks-contrib

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="" 


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages z zsh-autosuggestions colorize vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#Aliases
#Misc
alias wifi="wifi-gui"
alias public-ip='curl ifconfig.me/ip; printf "\n"'
alias c="clear"
alias sd="sudo docker"
alias v="vim"
alias sv="sudo -E vim"
alias sz="source /home/flo/.zshrc"
alias ld="ls -ahclt"
alias scp="sudo cp"
alias smv="sudo mv"

#Locations

#Pacman
alias spmu="sudo pacman -Syu"
alias spmr="sudo pacman -Rns"
alias spms="sudo pacman -S"

#Git
alias gcl="git clone"
alias gs="git status -s"
alias gm="git commit"
alias ga="git add"
alias gpl="git pull"
alias gp="git push"
alias gl="git lg2"

#Python
alias pi="pip install"
alias jlab="jupyter-lab --no-browser"

#Venv
alias vnew="source $HOME/EPFL/.venv/bin/activate"
alias vold="source $HOME/EPFL/.venv-3.7.0/bin/activate"
alias jpylab="vnew && jupyter-lab --no-browser"
alias jpylabnew="jpylab"
alias jpylabold="vold && jupyter-lab --no-browser"
alias de="deactivate"

#Docker
alias sd="sudo docker"
alias sdc="sudo docker-compose"

#Functions
#Misc
o() {xdg-open "$1" &|;}
mcd()
{
	mkdir -p -- "$1" &&
		cd -P -- "$1"
} # -- is to make sure that the arg is not parsed as an option to mkdir or cd
