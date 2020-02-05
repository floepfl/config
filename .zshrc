# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
fpath+=("$HOME/.zsh/pure")
autoload -U promptinit; promptinit
prompt pure

# Path to your oh-my-zsh installation.
export ZSH="/home/flo/.oh-my-zsh"

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
plugins=(git colored-man-pages z zsh-autosuggestions colorize)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/home/flo/.config/scripts
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias spms="sudo pacman -S"
alias wifi="wifi-gui"
alias public-ip='curl ifconfig.me/ip; printf "\n"'
alias c="clear"
alias spmr="sudo pacman -Rns"
alias sd="sudo docker"
alias v="vim"
alias sv="sudo -E vim"
alias spmu="sudo pacman -Syu"
alias gs="git status"
alias gm="git commit"
alias ga="git add"
alias gpl="git pull"
alias gp="git push"
alias sz="source /home/flo/.zshrc"
alias gcl="git clone"
o() {xdg-open "$1" &|;}
