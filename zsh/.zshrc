# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/bryan/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="powerlevel9k/powerlevel9k"
DEFAULT_USER="bryan"
POWERLEVEL9K_CUSTOM_LOCK_SYMBOL="zsh_custom_lock"
POWERLEVEL9K_CUSTOM_KEYBOARD_LAYOUT="zsh_get_keyboard_layout"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs vi_mode custom_keyboard_layout custom_lock_symbol)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs custom_lock_symbol)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
POWERLEVEL9K_OK_ICON=$'\u2714'
#POWERLEVEL_VCS_CLEAN=

zsh_custom_lock(){
  if [ ! -w $PWD ] ; then
    printf '%s' $'\uF023'
  fi
}

zsh_get_keyboard_layout(){
  if setxkbmap -query | grep dvorak -q ; then
    printf '%s' 'DV'
  else
    printf '%s' 'US'
  fi
}

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time\curl -sSL https://get.rvm.io | bash -s stable --ruby
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git sudo z colorize cp dirhistory emacs git git-flow rvm vi-mode)
#plugins=(git sudo z colorize cp dirhistory emacs git git-flow rvm gpg-agent asdf)
plugins=(git sudo colorize cp dirhistory emacs git git-flow gpg-agent asdf \
  gitignore mix systemd rsync ubuntu pass taskwarrior fasd colored-man-pages)
plugins+=(alias-tips)
#plugins+=(zsh-nvm)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# gpg
# export GPGKEY=welp

eval "$(thefuck --alias)"



#Try to fix hiding hidden folders
#compinit
_comp_options+=(globdots)


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# fasd aliases
alias v='f -e vim'
#alias e='f -e $EDITOR'
# alias e='f -e /home/bryan/.oh-my-zsh/plugins/emacs/emacsclient.sh'
# alias e='f -e /home/bryan/.oh-my-zsh/plugins/emacs/emacsclient.sh --no-wait'
# alias e='fasd -f -e emacs'
alias j='fasd_cd -d'

alias less='less -x4RFsX'

function fasd_emacs(){
  emacs $(fasd -f $@)
}

alias e=fasd_emacs

# unstow
alias unstow='stow --delete'

# because why not?
alias ryu='/home/bryan/src/repos/ryu/ryu -c'



## using asdf instead
# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 