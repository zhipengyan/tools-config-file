# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Path to go
export GOROOT=/usr/local/go
export PATH=/usr/local/go/bin:$PATH
export GOPATH=$HOME/Workspace/go
export PATH=$PATH:/Users/Sunny/Library/Android/sdk/platform-tools
export ELECTRON_MIRROR=https://npm.taobao.org/mirrors/electron/
export SASS_BINARY_SITE=https://npm.taobao.org/mirrors/node-sass/
export PHANTOMJS_CDNURL=http://cnpmjs.org/downloads
export PATH=$PATH:/usr/local/sbin

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="gnzh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git autojump ruby osx)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# homebrew mirror
export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cdwork='cd ~/Workspace/'
alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias cdcow='cd ~/Code/shimo/cow/'
alias clr='clear'
alias mysql='mysql -u root -p'
alias linode='ssh root@106.186.16.70'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias cdhexo='cd ~/Documents/hexo.source/_posts/'
alias cddesk='cd ~/Desktop/'
alias gpl='git pull origin '
alias gpld='git pull origin develop'
alias gps='git push origin '
alias gs='git status'
alias gct='git checkout'
alias gctb='git checkout -b'
alias apache="sudo apachectl start"
alias mdebug="weinre --httpPort 9003 --boundHost -all-"
alias linkwechat="autossh -M 2132 root@106.186.16.70 -N -R 80:localhost:12345"
# alias mcoding="mvim /Users/Sunny/Workspace/cow/startup.js"
alias coding="vim /Users/Sunny/Workspace/cow/startup.js"
alias tmuxrc='vim ~/.tmux.conf'
alias appfolder='open $(getconf DARWIN_USER_CACHE_DIR)/com.apple.appstore'
alias ip='ifconfig | grep 192.168.'
alias lst='lt --host http://sunnyyan.com:2000 --port 3012'
alias pon='export http_proxy=127.0.0.1:6152;export https_proxy=$http_proxy' 
alias pons='export http_proxy=127.0.0.1:8123;export https_proxy=$http_proxy' 
alias poff='unset http_proxy;unset https_proxy'
alias csh="polipo socksParentProxy=localhost:1080 &"
alias cdweb="cd /Library/WebServer/Documents"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
