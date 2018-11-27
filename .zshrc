# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-flow extract docker docker-compose docker-machine mvn osx)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/Library/Android/sdk/tools:~/Library/Android/sdk/platform-tools"
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
export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# autojump
 [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

#Example aliases
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias envconfig="vi ~/Projects/config/env.sh"
alias git="LANG=en_GB git"
plugins=(git colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting autojump zsh-completions)

alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=vim   
alias -s jsp=vi   
alias -s php=vi   
alias -s js=vi   
alias -s rb=vi   
alias -s py=vi  
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
 
#hexo
alias hx="hexo"
alias hxn="hexo n"
alias hxd="hexo d -g"
alias hxg="hexo g"
alias hxs="hexo server -l --drafts"
alias hxc="rm -f ~/blog/db.json && hexo clean"
alias hxp="hexo public post "
 
#svn
alias svn="/usr/local/bin/svn"
alias svnadmin="/usr/local/bin/svnadmin"
alias svndumpfilter="/usr/local/bin/svndumpfilter"
alias svnlook="/usr/local/bin/svnlook"
alias svnserve="/usr/local/bin/svnserve"
alias svnsync="/usr/local/bin/svnsync"
alias svnversion="/usr/local/bin/svnversion"

#adb
alias adbe="adb -e shell"
alias adbd="adb -d shell"

#youtube-dl
alias yd="youtube-dl -f '(bestvideo+bestaudio/best)' "

#jit
alias jit-cloud-mvn="mvn -s ~/.m2/jit-settings.xml -DskipTests=true"
alias pki-mvn="mvn -s ~/.m2/jit-pki-settings.xml -DskipTests=true"

#docker
alias dm="docker-machine"

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

dm-restore () {
	unset DOCKER_TLS_VERIFY
	unset DOCKER_HOST
	unset DOCKER_CERT_PATH
	unset DOCKER_MACHINE_NAME
}

# privoxy config
#export http_proxy=http://127.0.0.1:1087
#export https_proxy=http://127.0.0.1:1087

export http_proxy=http://127.0.0.1:8001
export HTTP_PROXY=http://127.0.0.1:8001
export https_proxy=http://127.0.0.1:8001
export HTTPS_PROXY=http://127.0.0.1:8001
