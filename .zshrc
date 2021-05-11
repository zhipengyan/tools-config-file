# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export TERM="xterm-256color"
export ZSH=$HOME/.oh-my-zsh
export grpc_node_binary_host_mirror=http://npm.taobao.org/mirrors
export PATH=$PATH:~/anaconda3/bin
export EDITOR=nvim
export PATH=$PATH:~/.emacs.d/bin
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=1
export LDFLAGS="-L/usr/local/opt/openssl/lib";
export CPPFLAGS="-I/usr/local/opt/openssl/include";
export HOMEBREW_NO_AUTO_UPDATE=1
export LESSCHARSET=utf-8
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export N_NODE_MIRROR=https://npm.taobao.org/mirrors/node
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'
export NVIM_COC_LOG_LEVEL=debug
export BRICK_SERVER=https://test-brick.baijia.com

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

plugins=(git autojump ruby osx kubectl)

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH

# source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# homebrew mirror
# export HOMEBREW_BOTTLE_DOMAIN=http://7xkcej.dl1.z0.glb.clouddn.com

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias clr='clear'
alias yunduo='ssh sunny@47.105.82.134'
alias vim='nvim'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias tmuxrc='vim ~/.tmux.conf'
alias gpl='git pull origin '
alias gpld='git pull origin develop'
alias gplc='branch=`git symbolic-ref --short -q HEAD` && git pull origin "${branch}"'
alias gpsc='branch=`git symbolic-ref --short -q HEAD` && git push origin "${branch}"'
alias gdb='branch=`git symbolic-ref --short -q HEAD` && git checkout develop && git branch -D "${branch}" && gplc'
alias gps='git push origin '
alias gs='git status'
# alias ls='nnn -de'
alias ls='lsd'
alias apache="sudo apachectl start"
alias apacheStop="sudo apachectl stop"
alias pon='export http_proxy=127.0.0.1:6152;export https_proxy=$http_proxy' 
alias pons='export http_proxy=127.0.0.1:8123;export https_proxy=$http_proxy' 
alias ponc='export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7891'
alias poff='unset http_proxy;unset https_proxy;unset all_proxy;'
alias ssh@deploy="ssh yanzhipeng@139.219.0.67"
alias ssh@idoc="ssh -p 2333  idoc@shimo.f3322.net"
alias ssh@test="ssh test@172.16.20.168"
alias ssh@doc="ssh yanzhipeng@172.16.20.102"
alias gitLocal="git config --local user.name '颜志鹏' && git config --local user.email 'yanzhipeng@baijia.com'"
alias gitGlobal="git config --global user.name 'zhipengyan' && git config --global user.email 'yanzhipeng2012@gmail.com'"
alias sshbaijia="ssh -p 2222 yanzhipeng@jumpserver.baijia.com"
alias kube-test="kubectl --kubeconfig ~/.kube/config-test -n whyy"
alias kube-beta="kubectl --kubeconfig ~/.kube/config-beta -n whyy"
alias kube-prod="kubectl --kubeconfig ~/.kube/config-prod -n whyy"

[ ! -d ~/.zplug ] && git clone https://github.com/zplug/zplug ~/.zplug
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "mafredri/zsh-async", from:github, use:async.zsh
# zplug "peco/peco", as:command, from:gh-r, use:"*${(L)$(uname -s)}*amd64*"
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf, use:"*${(L)$(uname -s)}*amd64*"
zplug "junegunn/fzf", use:"shell/*.zsh"
zplug "b4b4r07/enhancd", use:init.sh
zplug 'romkatv/powerlevel10k', use:powerlevel10k.zsh-theme, from:github, as:theme, depth:1
zplug "zsh-users/zsh-syntax-highlighting", use:zsh-syntax-highlighting.zsh, from:github
zplug "zsh-users/zsh-autosuggestions", use:zsh-autosuggestions.zsh
zplug "lukechilds/zsh-better-npm-completion", defer:2
zplug load --verbose >> /dev/null

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/sunny/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/sunny/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/sunny/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/sunny/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# if [ -x "$(command -v kubectl)" ]; then
#   source <(kubectl completion zsh)
# fi

# clear
