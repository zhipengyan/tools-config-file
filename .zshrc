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
export grpc_node_binary_host_mirror=http://npm.taobao.org/mirrors
export GOROOT=/usr/local/opt/go@1.11
export PATH=$PATH:$GOROOT/bin
# export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=1
export LDFLAGS="-L/usr/local/opt/openssl/lib";
export CPPFLAGS="-I/usr/local/opt/openssl/include";

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

source $HOME/.cargo/env

# npm 自动补全支持
# npm completion

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="gnzh"
ZSH_THEME="agnoster"

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
plugins=(git autojump ruby osx zsh-better-npm-completion zsh-wakatime)

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
# alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
alias cdcow='cd ~/Code/shimo/cow/'
alias clr='clear'
alias mysql='mysql -u root -p'
alias linode='ssh root@106.186.16.70'
alias aliyun='ssh -i ~/.ssh/mac_pro.pem root@47.104.201.47'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias cdhexo='cd ~/Documents/hexo.source/_posts/'
alias cddesk='cd ~/Desktop/'
alias gpl='git pull origin '
alias gpld='git pull origin develop'
alias gplc='branch=`git symbolic-ref --short -q HEAD` && git pull origin "${branch}"'
alias gpsc='branch=`git symbolic-ref --short -q HEAD` && git push origin "${branch}"'
alias gdb='branch=`git symbolic-ref --short -q HEAD` && git checkout develop && git branch -D "${branch}" && gplc'
alias gps='git push origin '
alias gs='git status'
alias gct='git checkout'
alias gctb='git checkout -b'
alias apache="sudo apachectl start"
alias mdebug="weinre --httpPort 9009 --boundHost -all-"
alias linkwechat="autossh -M 2132 root@106.186.16.70 -N -R 80:localhost:12345"
# alias mcoding="mvim /Users/Sunny/Workspace/cow/startup.js"
alias coding="vim /Users/Sunny/Workspace/cow/startup.js"
alias tmuxrc='vim ~/.tmux.conf'
alias appfolder='open $(getconf DARWIN_USER_CACHE_DIR)/com.apple.appstore'
alias ip='ifconfig | grep 192.168.'
alias lst='lt --host http://sunnyyan.com:2000 --port 3012'
alias ltwx='lt --host http://adnbe.cn:80 -p 80 -s ngrok'
alias pon='export http_proxy=127.0.0.1:6152;export https_proxy=$http_proxy' 
alias pons='export http_proxy=127.0.0.1:8123;export https_proxy=$http_proxy' 
alias poff='unset http_proxy;unset https_proxy'
alias csh="polipo socksParentProxy=localhost:1080 &"
alias cdweb="cd /Library/WebServer/Documents"
alias goto-master="git branch -D master && git fetch origin master && git checkout master"
alias goto-develop="git checkout develop"
alias goto-release="git branch -D release && git fetch origin release && git checkout release"
alias pm2d="pm2 delete all"
alias updateapi="currentDir=`pwd` && cd ~/Code/shimo/api && gpld && npm i && npm run migrate up && cd ${currentDir}"
alias updatecow="currentDir=`pwd` && cd ~/Code/shimo/cow && gpld && npm i && cd ${currentDir}"
alias updatequill="currentDir=`pwd` && cd ~/Code/shimo/quill && gpld && npm i && npx lerna bootstrap && cd ${currentDir}"
alias updateall="updateapi && updatecow && updatequill"
alias homemode="cp -f ~/Code/shimo/.local-config/local.home.toml ~/Code/shimo/eagle/config/local.toml && cp -f ~/Code/shimo/.local-config/resource_loader.js ~/Code/shimo/cow/front/assets/scripts/cow/pc/shared/resource_loader.js"
alias shimomode="cp -f ~/Code/shimo/.local-config/local.shimo.toml ~/Code/shimo/eagle/config/local.toml && cp -f ~/Code/shimo/.local-config/resource_loader.js ~/Code/shimo/cow/front/assets/scripts/cow/pc/shared/resource_loader.js"
alias defaultmode="cp -f ~/Code/shimo/.local-config/local.default.toml ~/Code/shimo/eagle/config/local.toml && cd ~/Code/shimo/cow && git checkout front/assets/scripts/cow/pc/shared/resource_loader.js"
alias weworkmode="cp -f ~/Code/shimo/.local-config/m_plain_wework.html ~/Code/shimo/cow/app/views/mobile/m_plain.html"
alias rlock="rm ~/Code/shimo/quill/packages/adapter-web/package-lock.json ~/Code/shimo/quill/packages/core-editor/package-lock.json ~/Code/shimo/quill/packages/plugin-collaborator/package-lock.json ~/Code/shimo/quill/packages/plugin-history/package-lock.json ~/Code/shimo/quill/packages/plugin-mention/package-lock.json ~/Code/shimo/quill/packages/plugin-revision/package-lock.json ~/Code/shimo/quill/packages/plugin-table-of-content/package-lock.json"
alias bapp="cd ~/Code/shimo/quill && npm run build-client && cp -f ~/Code/shimo/quill/packages/client/dist/quill.js ~/Code/shimo/baboon/node_modules/@shimo/client-quill/dist && cd ~/Code/shimo/baboon && npm run build-dev"
alias bapp2="cd ~/Code/shimo/_quill && npm run build-client && cp -f ~/Code/shimo/_quill/packages/client/dist/quill.js ~/Code/shimo/baboon/node_modules/@shimo/client-quill/dist && cd ~/Code/shimo/baboon && npm run build-dev"
alias ssh@deploy="ssh yanzhipeng@139.219.0.67"
alias ssh@doc="ssh yanzhipeng@172.16.20.102"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
alias build-editor="npx lerna run build --scope=@shimo/sdk-document-editor"
alias build-quill="npx lerna run build --scope=@shimo/sdk-document-quill"
alias build-comment="npx lerna run build --scope=@shimo/sdk-document-plugin-comment"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
