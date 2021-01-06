# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

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

# solve escape lag in vim, 10ms for key sequences
KEYTIMEOUT=1

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration
export CUDA_HOME=/usr/local/cuda 
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${CUDA_HOME}/lib64 
 
export PATH=$HOME/.local/bin:/usr/local/bin:${CUDA_HOME}/bin:${PATH}
# export MANPATH="/usr/local/man:$MANPATH"
export CHEAT_PATH=$HOME/Documents/cheatsheets

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias tm="tmux"
alias llt="ll --sort=time"
alias lle="ll --sort=extension"
alias lls="ll --sort=size"
# alias for linux only
alias open="xdg-open"

# Fires-up a Jupyter notebook by supplying a specific port
# remoteuser@remotehost: jpt 8889
function jpts(){
	jupyter notebook --no-browser --port=$1
}

# Forwards port $1 into port $2 and listens to it
# localuser@localhost: jptt 8889 8888
function jptt(){
	ssh -N -f -L localhost:$2:localhost:$1 remoteuser@remotehost
}

# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source $HOME/.local/bin/virtualenvwrapper.sh

# use newest cmake
export PATH=/usr/local/bin:$PATH
# export CMAKE_ROOT=/usr/local/share/cmake-3.15

# cheatsheet
# ## search file content
# >> grep -rnw '/path/to/somewhere/' -e 'pattern'
# ## clear terminal buffer
# >> echo -r \\033c
# ## uninstall cmake project
# >> xargs rm < install_manifest.txt 
# ## count files
# >> find . -type f | wc -l
#
# bash shortcuts
# C-u, cut before cursor
# C-w, cut previous word
# C-k, cut from cursor to end
# C-y, paste
# Shift + Insert, paste text to terminal
# C-e, move cursor to end
# C-a, move cursor to begin
# C-f, move cursor to previous space
# C-b, move cursor to next space
# C-z, pause current program
# 
# ## background jobs control
# [CTRL-z], bring job to bachground
# bg, bring job to bachground
# fg, bring job to forground
# jobs, list jods
# kill %2, kill the No.2 jobs background
#
# nohup, run program even exit SSH
#
# advanced scripts
# 1. convert files to pdf with natural number sequence: convert $(find . -name "*.png" -print0 | sort -zV | xargs -r0 echo) validation.pdf
# 2. search files, and converted to other format
