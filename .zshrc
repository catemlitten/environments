# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/cat.litten/.oh-my-zsh"
ZSH_THEME="cloud"
# CASE_SENSITIVE="true"

# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git,
  django,
  github,
  pyenv,
  python,
  vscode
)

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

# Git aliases
alias gpush="git push origin"
alias gpull="git pull origin"
alias ga="git add"
alias gs="git status"
alias gcm="git commit -m"
alias makefetchhappen="git fetch --all"
alias branches="git branch -r"
alias bringme="git checkout"
alias newbranch="git checkout -b"
alias unstash="git stash apply"
alias renameto="git branch -m"
alias commitmentissues="git reset HEAD~1"
alias blowitaway="git reset --hard HEAD~1"

# K8s and Docker aliases
alias kx="kubectx"
alias k="kubectx"
alias kc="kubectl"
alias kns="kubens"
alias dockercontainers="docker container ls -a"
alias catsjobs="kc get jobs | grep cat"
alias catsdeployments="kc get deployments | grep cat"
alias catspods="kc get pods | grep cat"
alias containerip="docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'"
alias rmdangles="docker rmi $(docker images -aq --filter dangling=true)"

# Java aliases
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
alias j10="export JAVA_HOME=`/usr/libexec/java_home -v 10`; java -version"

# Go stuff
alias godeps="go get -d ./.."

# Terraform stuff
alias tf=terraform
alias tfp=terraform plan
alias turntheearth=terraform apply

# System stuff
alias pipehist="history | grep"
alias sudofinder="sudo find / -name"
alias whatsonport="sudo lsof -i" # add in tcp:3000 or etc
alias killprocess="sudo kill -9" # add PID of process to kill
alias reloadzsh="source ~/.zshrc"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ccchanges="code ~/.zshrc"

# NVM setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Python stuff
source "/usr/local/bin/virtualenvwrapper.sh"
export WORKON_HOME="/Users/{username}/.virtualenvs/"
venvwrap="virtualenvwrapper.sh"
/usr/bin/which -s $venvwrap
if [ $? -eq 0 ]; then
    venvwrap=`/usr/bin/which $venvwrap`
    source $venvwrap
fi
alias pythondens='lsvirtualenv -l'

# allow multiple python versions
if command -v pyenv 2>/dev/null; then
  eval "$(pyenv init -)"
fi

# Airflow stuff
AIRFLOW_HOME=~/Documents/{replacewithdir}
SLUGIFY_USES_TEXT_UNIDECODE=yes

# K8s stuff
source ~/Library/Caches/Homebrew/zsh-kubectl-prompt--git/kubectl.zsh
RPROMPT='($ZSH_KUBECTL_PROMPT)'
if [[ $RPROMPT == *"sbx"* ]]; then
  RPROMPT \e[5mBlink
fi