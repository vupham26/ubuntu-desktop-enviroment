# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/vupham26/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv)
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

# Only USER show on
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)"
  fi
}
DEFAULT_USER=`whoami`


# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
  git
  command-not-found
  #docker
  #docker-compose
  #docker-machine
  nix
  nix-fast
  mvn
  nvm
  node
  pip
  npm
  pyenv
  pylint
  python
  tmux
  tmux-cash
  ubuntu
  yarn
  zsh_reload
  gpg-agent
  go
  golang
  cargo
  cabal
  cloudapp
  composer
  copyfile
  copydir
  copybuffer
  cp
  frontend-search
  gem
  mvn
  ssh-agent
  stack
  rust
  wp-cli
  yarn
)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:usr/share/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

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

# PKG_CONFIG
export PKG_CONFIG_PATH="$(pkg-config --variable pc_path pkg-config)"

# LD_LIBRARY_PATH
export LD_LIBRARY_PATH='/lib:/lib64:/usr/lib:/usr/arm-linux-gnueabihf/lib:/usr/local/lib:$HOME/bitcoin/db4/lib:$HOME/boost_1_67_0/libs:$HOME/Qt5.7.0/Tools/QtCreator/lib:$HOME/Qt5.7.0/Tools/QtCreator/lib/Qt/lib'

# Openssl
#OPENSSL_ROOT_DIR=/usr/local/ssl
#OPENSSL_LIBRARIES=/usr/local/ssl/lib
#export PATH="/usr/local/ssl/bin:$PATH"

# Linuxbrew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"

# ZSH Beauty
source /home/linuxbrew/.linuxbrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/linuxbrew/.linuxbrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/home/linuxbrew/.linuxbrew/share/zsh-syntax-highlighting/highlighters
source "/home/linuxbrew/.linuxbrew/opt/zsh-git-prompt/zshrc.sh"
source /home/linuxbrew/.linuxbrew/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
fpath=(/home/linuxbrew/.linuxbrew/share/zsh-completions $fpath)

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Golang
export GOPATH=$HOME/gocode
export GOBIN=$GOPATH/bin
export PATH="$GOBIN:$PATH"

# RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# PYENV
export PATH="/home/vupham26/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# JAVA
#export JAVA_HOME="/usr/lib/jvm/java-8-oracle"

# Rust-lang
source $HOME/.cargo/env

# Nix OS
. /home/vupham26/.nix-profile/etc/profile.d/nix.sh
export LOCALE_ARCHIVE="$(readlink ~/.nix-profile/lib/locale)/locale-archive"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/vupham26/.sdkman"
[[ -s "/home/vupham26/.sdkman/bin/sdkman-init.sh" ]] && source "/home/vupham26/.sdkman/bin/sdkman-init.sh"

# BerkeleyDB4
#export BDB_PREFIX=/home/vupham26/bitcoin/db4

# Boost_1.67.0
#export BOOST_ROOT=$HOME/boost_1_67_0/boost

# QT5-creator
#export PATH="/home/vupham26/Qt5.7.0/Tools/QtCreator/bin:$PATH"

# Stack 
export PATH="$HOME/.local/bin:$PATH"
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit
eval "$(stack --bash-completion-script stack)"

# Google-cloud-sdk
#export PATH="/home/vupham26/google-cloud-sdk/bin:$PATH"
#export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
	# The next line updates PATH for the Google Cloud SDK.
#	if [ -f '/home/vupham26/google-cloud-sdk/path.zsh.inc' ]; then source '/home/vupham26/google-cloud-sdk/path.zsh.inc'; fi
	# The next line enables shell command completion for gcloud.
#	if [ -f '/home/vupham26/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/vupham26/google-cloud-sdk/completion.zsh.inc'; fi

# asdf : extendable version manager
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

	# asdf java : set JAVA_HOME
#	asdf_update_java_home() {
#	  local current
#	  if current=$(asdf current java); then
#	    local version=$(echo $current | cut -d ' ' -f 1)
#	    export JAVA_HOME=$(asdf where java $version)
#	  else
#	    echo "No java version set. Type `asdf list-all java` for all versions."
#	  fi
#	}
#	asdf_update_java_home

# erlang
#. /home/vupham26/.asdf/installs/erlang/20.3/activate
