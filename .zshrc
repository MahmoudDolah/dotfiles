echo "What's good :)"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/mahmoud/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dpoggi"

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
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast, vi-mode)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
. /home/mahmoud/Documents/git-repos/z-master/z.sh
#eval $(thefuck --alias fuck)
#alias fix="fuck"
alias config='/usr/bin/git --git-dir=/home/mahmoud/.cfg/ --work-tree=/home/mahmoud'
alias v='vim'
alias vrc='vim ~/.zshrc'
alias src='source ~/.zshrc'
alias wtf='wtfutil'
alias wtfvrc='vim /home/mahmoud/.config/wtf/config.yml'
alias sampler='sampler -c ~/.config/sampler/config.yml'
alias samplervrc='vim ~/.config/sampler/config.yml'
alias myip='curl -4 icanhazip.com'
alias open='xdg-open'
alias update-all="sudo apt -y update && sudo apt -y full-upgrade && sudo apt -y autoremove"
alias ua="update-all"
alias gs="git status"
alias gfa="git fetch --all"
alias lt="ls -althr"
alias gist="gist -p -c"
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
eval "$(hub alias -s)"
fpath=(~/.zsh $fpath)
# . /etc/bash_completion.d/git

function lb() {
    mkdir -p ~/.logbook
    vim ~/.logbook/$(date '+%Y-%m-%d').md
}
function lbc() {
    mkdir -p ~/.logbook
    code ~/.logbook/
    touch ~/.logbook/$(date '+%Y-%m-%d').md
    code -g ~/.logbook/$(date '+%Y-%m-%d').md
}

function fbr() {
  git fetch
  local branches branch
  branches=$(git branch -a) &&
  branch=$(echo "$branches" | fzf +s +m -e) &&
  git checkout $(echo "$branch" | sed "s:.* remotes/origin/::" | sed "s:.* ::")
}

function gcopy() {
    if [ uname -o == "GNU/Linux" ]
    then
        gitio shorten "$1" | xclip -selection clipboard
    else
        gitio shorten "$1" | pbcopy
    fi
}

export GOROOT=/usr/local/go
export GOPATH=$HOME/Documents/Golang
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export VIS_PATH=$HOME/.vis
export VISUAL=vim
export EDITOR="$VISUAL"

#if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
#        source /etc/profile.d/vte.sh
#fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GPG_TTY=$(tty)
export GPG_TTY=$(tty)
export PATH=/home/mahmoud/.local/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
