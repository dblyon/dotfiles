###############################################################################
source ~/.profile

###############################################################################
# David Lyon personal settings
export PATH=/Users/dblyon/anaconda3/bin:/usr/local/bin:/Users/dblyon/.rvm/gems/ruby-2.4.0/bin:/usr/local:/usr/local/Cellar:/Users/dblyon/bin:/Users/dblyon/install/bin:/Users/dblyon/install:/Users/dblyon/install/crux-3.1.Darwin.i386/bin:/Users/dblyon/install/qcachegrind/qcachegrind.app/Contents/MacOS:/Users/dblyon/scripts:$PATH
export PYTHONPATH=$PYTHONPATH:/Users/dblyon/modules/metaprot:/Users/dblyon/modules/cpr/metaprot/sql:/Users/dblyon/miniconda3:/Users/dblyon/Downloads/introduction_to_ml_with_python
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
## use Python 2.7 as the default
#source activate python2
# Activate ETE/Anaconda
#unset PYTHONPATH; export PATH=~/anaconda_ete/bin:$PATH; export DYLD_FALLBACK_LIBRARY_PATH=~/anaconda_ete/lib
################################################################################
# alias temp_agoku="ssh dblyon@192.38.117.182"
# alias agoku="ssh david@agotool.sund.root.ku.dk"
alias san="ssh dblyon@san.embl.de"
alias bio="cd ~/modules/uzh/bio134"
alias pisces="ssh dblyon@pisces.meringlab.org"
alias modules="cd /Users/dblyon/modules"
alias commands="cd ~/SynologyDrive/commands/"
alias cheat="cd /Users/dblyon/SynologyDrive/CheatSheets"
alias fdr="cd /Users/dblyon/modules/cpr/fdriter"
alias ago="cd ~/modules/cpr/agotool"
alias aquarius="ssh -p 22 dblyon@aquarius.meringlab.org"
alias syncago="rsync -rtuva dblyon@imlslnx-atlas.uzh.ch://home/dblyon/agotool/ /Users/dblyon/modules/cpr/agotool/ && rsync -rtuva /Users/dblyon/modules/cpr/agotool/ dblyon@imlslnx-atlas.uzh.ch://home/dblyon/agotool/"
alias dc="docker-compose"
alias ll='ls -lhtr'
alias lt='ls -lhtr' # oh my zshell or something else is overwriting 'll' alias
alias lr='ls -lhtr' # oh my zshell or something else is overwriting 'll' alias
alias lls='ls -lhSr'
alias ld="ls -ld */"  # List in long format, only directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cdc='cd ~/SynologyDrive/CPR/'
alias pwdcp="pwd | tr -d '\n' | pbcopy"
alias opena="open -a Atom"
alias gimp="/Applications/GIMP.app/Contents/MacOS/GIMP"
alias snakels="snakemake -l | tr '\n' ' '"
alias pc="python setup.py build_ext --inplace -f"
### UZH / SIB
alias atlas="ssh dblyon@imlslnx-atlas.uzh.ch"
alias gaia="ssh dblyon@imlslnx-gaia.uzh.ch"
alias sagi="ssh dblyon2@imlslnx-sagittarius.uzh.ch"
### UZH mounting
# /mnt/mnemo4/dblyon # home directory at UZH
alias mounthome="sshfs dblyon@imlslnx-atlas.uzh.ch:/mnt/mnemo4/dblyon /Volumes/mnt/home/ -o defer_permissions -o volname=home -o follow_symlinks"
alias umounthome="umount /Volumes/mnt/home/"
alias home="/mnt/home"
alias mountfive="sshfs dblyon@imlslnx-atlas.uzh.ch:/mnt/mnemo5/dblyon /Volumes/mnt/mnemo5/dblyon -o defer_permissions -o volname=home -o follow_symlinks"
alias umountfive="umount /Volumes/mnt/mnemo5/dblyon"
alias mnt5="sshfs dblyon@imlslnx-atlas.uzh.ch:/mnt/mnemo5/dblyon/ /Volumes/mnt/mnemo5/dblyon/ -o defer_permissions -o volname=mnemo5 -o follow_symlinks"
alias umnt5="umount /Volumes/mnt/mnemo5/dblyon"
### Snakemake autocompletion
# compdef _gnu_generic snakemake

### zsh match case insensitve patterns
unsetopt CASE_GLOB


################################################################################
################################################################################
### antigen from https://github.com/zsh-users/antigen
# source /usr/local/share/antigen/antigen.zsh
# # Load the oh-my-zsh's library.
# antigen use oh-my-zsh
# # Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle pip
# antigen bundle command-not-found
# antigen bundle compleat
# # Syntax highlighting bundle.
# antigen bundle zsh-users/zsh-syntax-highlighting
# # Load the theme.
# antigen bundle tarruda/zsh-autosuggestions
# antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
# # Tell Antigen that you're done.
# antigen apply
################################################################################

################################################################################
### https://github.com/caiogondim/bullet-train.zsh
### Powerline and Oh my zsh settings
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# export ZSH=/Users/dblyon/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="bullet-train"
#"powerlevel9k/powerlevel9k" # "agnoster" #"bullet-train"
# other themes:
# "agnoster"  #"robbyrussell"
# "powerlevel9k/powerlevel9k"
# DEFAULT_USER="dblyon"
# export TERM="xterm-256color"

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

# BULLETTRAIN_PROMPT_SEPARATE_LINE="true"

# plugins=(
#   git
#   docker
#   python
#   osx
# )
#
# BULLETTRAIN_PROMPT_ORDER=(
#   time
#   context
#   dir
#   git
# )
#
# BULLETTRAIN_TIME_BG="yellow"
# BULLETTRAIN_TIME_FG="default"
#
# BULLETTRAIN_CONTEXT_BG="blue"
# BULLETTRAIN_CONTEXT_FG="default"
# BULLETTRAIN_CONTEXT_DEFAULT_USER="dblyon"
#
# BULLETTRAIN_DIR_BG="cyan"
# BULLETTRAIN_DIR_FG="white"
#
# BULLETTRAIN_GIT_BG="black"
# BULLETTRAIN_GIT_FG="default"
#
#
# source $ZSH/oh-my-zsh.sh

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

####### DBL modifications below
#### from https://powerline.readthedocs.io/en/latest/usage/shell-profmpts.html#zsh-prompt
# pip show powerline-status
# --> /Users/dblyon/anaconda3/lib/python3.6/site-packages
# . /Users/dblyon/anaconda3/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
###############################################################################
# History settings
export HISTFILE=~/.history
setopt EXTENDED_HISTORY     # store date in .history
export SAVEHIST=9999999     # number of lines to save
export HISTSIZE=$SAVEHIST   # number of lines from .history to read in at start of new shell
setopt HIST_IGNORE_ALL_DUPS # history is de-duped
setopt INC_APPEND_HISTORY  # append as we execute, not when we leave the shell
setopt SHARE_HISTORY       # share one history between all open shells
# enable **/file expansion, negation [^ab]*, and more
setopt EXTENDED_GLOB
################################################################################
################################################################################
# Aliases and mappings

# alias for mass move
autoload -U zmv
# alias mmv='noglob zmv -W'

# set up aliases for recently used directories
setopt AUTOPUSHD
setopt PUSHDIGNOREDUPS
setopt pushdsilent
setopt pushdtohome
# alias d='dirs -v'
# for index ({1..9}) alias "$index"="cd +${index}"; unset index

# set up control + underscore to bring back the last word of the last line
# bindkey "^_" insert-last-word

# set up ctrl-R to bring back previous commands with no duplicates
bindkey '^R' history-incremental-pattern-search-backward
zstyle ':completion:*:history-words' remove-all-dups yes

# alias for generating histogram
alias -g hist="sort | uniq -c | sort -n"

# alias for sampling from files --> DON'T uncomment since name collision with awesome python version
#alias -g sam='nl | shuf | head | sort -n | cut -f2-'

# alias for diff if colordiff is installed
if (( $+commands[colordiff] )); then
    alias diff='colordiff -u'
fi

# set up GNU tools for Mac folks
if (( $+commands[gshuf] )); then
    alias shuf='gshuf'
fi

if (( $+commands[gsort] )); then
    alias sort='gsort'
fi
if (( $+commands[gls] )); then
    alias ls='gls'
fi

if (( $+commands[tmux] )); then
    alias tmux='tmux -2 -u' # colours and utf-8 support
fi

# alias for coloured grep output if we aren't writing into a file
if (( $+commands[ggrep] )); then
    alias grep='ggrep --color=auto'
else
    alias grep='grep --color=auto'
fi

################################################################################
# set up coloured ls output

if [[ $TERM =~ "-256color$" ]]; then
    export LS_COLORS='di=\e[38;5;33:ln=35:so=36:pi=32:ex=33:bd=34;46:cd=34;43:su=33;44:sg=33;42:tw=34;43:ow=34;41:*.fasta=35:*.fa=35:'
else
    export LS_COLORS='di=34:ln=35:so=36:pi=32:ex=33:bd=34;46:cd=34;43:su=33;44:sg=33;42:tw=34;43:ow=34;41:*.fasta=35:*.fa=35'
fi

# for Mac OS X if gls is installed
if (( $+commands[gls] )); then
    alias ls='gls --color=auto'
fi

# if on Linux and using GNU ls, then uncomment the following line
# alias ls='ls --color=auto'

# tree command change colors
export TREE_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:*.fasta=35:*.fa=35'
################################################################################
################################################################################
# Completion
setopt complete_in_word

zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''
# do file name completion if all other completions fail
zstyle ':completion:*' completer _complete _ignored _files

# Use caching to make completion for commands such as dpkg and apt usable.
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path "${ZDOTDIR:-$HOME}/.zcompcache"

# Group matches and describe.
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:corrections' format ' %F{green}-- %d (errors: %e) --%f'
zstyle ':completion:*:descriptions' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:default' list-prompt '%S%M matches%s'
zstyle ':completion:*' format ' %F{yellow}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes

# Directories
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion:*:*:cd:*:directory-stack' menu yes select
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
zstyle ':completion:*' squeeze-slashes true

# History
zstyle ':completion:*:history-words' stop yes
zstyle ':completion:*:history-words' remove-all-dups yes
zstyle ':completion:*:history-words' list true
zstyle ':completion:*:history-words' menu yes
################################################################################
# Functions

# Find newest work in a directory tree
newest () {
    local LINES=5  # the default number of lines to print
    if [[ $* != "" ]]; then
        local LINES=$*
    fi
    paste <( for d in `find . -type f -print0 | xargs -0 stat -f "%m %N" | sort -n | tail -n $LINES | cut -f1 -d" "`; do date -j -f %s $d +%a" "%d" "%b" "%k":"%M; done ) <(find . -type f -print0 | xargs -0 stat -f "%m %N" | sort -n | tail -n $LINES | cut -f2 -d" ")
}

# Set the title of iterm2 tabs to the useful part of the directory
function precmd {
    # adapted from http://aperiodic.net/phil/prompt/
    local titlelen=20
    TITLE=$(print -P "%$titlelen<...<%~")
    echo -ne "\e]1;$TITLE\a"
}

export PATH="/usr/local/sbin:$PATH"
########################################################################################################################
alias config='/usr/local/bin/git --git-dir=/Users/dblyon/.cfg/ --work-tree=/Users/dblyon'
########################################################################################################################
### Set up the prompt
setopt promptsubst # enable substitution in prompt
unsetopt promptcr
# zsh understands: black, red, green, yellow, blue, magenta, cyan and white
# Available colours
# for colour in {0..255}; do echo -e "\e[38;05;${colour}m $colour Test"; done
# for code in 53 80 95 180 28 209 18 16 52 88 124 130 215 117 111 105 69 20 211 ; do echo -e "\e[38;05;${code}m $code: Selected"; done
COLOURS="
\e[mm         grey
\e[1m1m
\e[0;30m0;30m black
\e[0;31m0;31m white
\e[0;32m0;32m red
\e[0;33m0;33m yellow
\e[0;34m0;34m blue
\e[0;35m0;35m green
\e[0;36m0;36m cyan
\e[0;37m0;37m purple
\e[1;30m1;30m
\e[1;31m1;31m
\e[1;32m1;32m
\e[1;33m1;33m
\e[1;34m1;34m
\e[1;35m1;35m
\e[1;36m1;36m
\e[1;37m1;37m
"
COLOR_BLUE='\e[0;34m'
COLOR_LIGHT_BLUE='\e[1;34m'
COLOR_GREEN='\e[0;32m'
COLOR_LIGHT_GREEN='\e[1;32m'
COLOR_CYAN='\e[0;36m'
COLOR_LIGHT_CYAN='\e[1;36m'
COLOR_RED='\e[0;31m'
COLOR_LIGHT_RED='\e[1;31m'
COLOR_PURPLE='\e[0;35m'
COLOR_LIGHT_PURPLE='\e[1;35m'
COLOR_BROWN='\e[0;33m'
COLOR_YELLOW='\e[1;33m'
COLOR_GRAY='\e[0;30m'
COLOR_LIGHT_GRAY='\e[0;37m'
# variables for prompt
PS1_TIME="%{%F{52}%}%T"
PS1_CMDNO="%{%F{52}%}%h"
PS1_GIT="%{%F{223}%}"
PS1_REPO="%{%F{210}%}"
PS1_ERROR_CODE="%(? %{%F{88}%} %{%F{124}%})%? "
PS1_USER_HOST="%{%F{cyan}%}%n%{%F{cyan}%}@%{%F{cyan}%}%m "
PS1_DIR="%{%F{blue}%}%~"
# PS1_PRMT="%{%F{green}%}%# %{%F{grey}%}"
PS1_PRMT="%{%F{green}%}%# %{%F{grey}%}"
if [[ $HOST == $LOCAL ]]; then
PS1='
PS1_USER_HOST$PS1_MID_BR$PS1_DIR
$PS1_MID_BR$PS1_REPO$(repo_prompt_char)$PS1_PRMT'
else
    PS1='
$PS1_USER_HOST$PS1_DIR
$PS1_PRMT'
fi
########################################################################################################################
### https://scriptingosx.com/2019/07/moving-to-zsh-06-customizing-the-zsh-prompt/
### PROMPT='%~ %# '
### %# shows a # when the current prompt has super-user privileges
# PROMPT='$~ $# '
# PROMPT='%2~ %# '
# PS1=$'%{\e[0;35m%}%T{%{\e[0;37m%}%n@%m%{\e[0;35m%}}%?%# %{\e[0;37m%}'
