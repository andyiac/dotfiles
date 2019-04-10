# Path to your oh-my-zsh installation.
export ZSH=/home/summer/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git z)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/summer/Android/Sdk/tools/:/home/summer/Android/Sdk/platform-tools/"
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


export EDITOR=$(which vi)

alias sl="ls"

# for xclip
alias c="xclip -selection clipboard"
alias v="xclip -o"

# shadowsocks
alias ss="sslocal -c /etc/shadowsocks.json &"

# connect display DP2  
alias dp2on="xrandr --output DP2 --above LVDS1 --auto"
alias dp2off="xrandr --output DP2 --off"
alias dp2on_right="xrandr --output DP2 --right-of LVDS1 --auto"
alias dp2on_left="xrandr --output DP2 --left-of LVDS1 --auto"

alias gs="git status"
alias ga="git add ."
alias gcm="git commit"
alias gc="git commit "



# Android ApiDemos
alias apidemos="cd /home/summer/data2/Android/Sdk/samples/android-21"

# Genymotion
export PATH=$PATH:/home/summer/Program/genymotion

alias volume="pavucontrol"

export NVM_DIR="/home/summer/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# jdk environment 
# export JAVA_HOME=/opt/jvm/jdk1.7.0_79
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_45
export JRE_HOME=${JAVA_HOME}/jre  
export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib  
export PATH=${JAVA_HOME}/bin:$PATH  


export PATH="$PATH:/home/summer/Program/fb-infer/infer/bin"  

# for Android tools
export PATH=$PATH:/home/summer/data2/Android/Sdk/tools/
export PATH=$PATH:/home/summer/data2/Android/Sdk/platform-tools/

export PATH=$PATH:/home/summer/data2/Android/Sdk/
export PATH=$PATH:/home/summer/data2/android-ndk-r10e/


#export ANDROID_SDK="/home/summer/data2/Android/Sdk/"
#export ANDROID_NDK="/home/summer/data2/android-ndk-r10e/"
#export PATH=$PATH:ANDROID_SDK:ANDROID_NDK

