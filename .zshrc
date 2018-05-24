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
# alias ago="ssh dblyon@10.34.6.92" # this is the new red hat server # used to be david@ip address
# alias newgo="ssh dblyon@10.34.6.24" # old debian server
# alias cbs="ssh dblyon@login.cbs.dtu.dk"
# alias green="ssh dblyon@green.jensenlab.org"
# alias ome="ssh davily@computerome.cbs.dtu.dk"
#alias omemnth="sshfs davily@computerome.cbs.dtu.dk:/home/people/davily /mnt/home/ -o defer_permissions -o volname=home -o follow_symlinks"
#alias omemntp="sshfs davily@computerome.cbs.dtu.dk:/home/projects/cu_10029 /mnt/projects/ -o defer_permissions -o volname=projects -o follow_symlinks"
##### mounting folders (http://wiki.bio.dtu.dk/computerome/index.php/Tips_and_Tricks)
#sshfs davily@computerome.cbs.dtu.dk:/home/people/davily /mnt/ome_home/ -o defer_permissions -o volname=ome_home -o follow_symlinks
#sshfs davily@computerome.cbs.dtu.dk:/home/projects/cu_10029 /mnt/ome_projects/ -o defer_permissions -o volname=ome_projects -o follow_symlinks
#umount /mnt/ome_home
#umount /mnt/ome_projects
alias ø="say røll grøll mell fløll"
alias meta="cd /Users/dblyon/modules/cpr/metaprot"
alias modules="cd /Users/dblyon/modules/cpr"
alias commands="cd ~/CloudStation/commands/"
alias fdr="cd /Users/dblyon/modules/cpr/fdriter"
alias ll='ls -lhtr'
alias ld="ls -ld */"  # List in long format, only directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cdc='cd ~/CloudStation/CPR/'
alias pwdcp='pwd | pbcopy && export dir=`pwd`'
alias opena="open -a Atom"
alias gimp="/Applications/GIMP.app/Contents/MacOS/GIMP"
################################################################################
### UZH / SIB
alias atlas="ssh dblyon@imlslnx-atlas.uzh.ch"
alias gaia="ssh dblyon@imlslnx-gaia.uzh.ch"
### UZH mounting
# /mnt/mnemo4/dblyon # home directory at UZH
alias mounthome="sshfs dblyon@imlslnx-atlas.uzh.ch:/mnt/mnemo4/dblyon /mnt/home/ -o defer_permissions -o volname=home -o follow_symlinks"
alias umounthome="umount /mnt/home/"
alias home="/mnt/home"
alias mountfive="sshfs dblyon@imlslnx-atlas.uzh.ch:/mnt/mnemo5/dblyon /mnt/mnemo5/dblyon -o defer_permissions -o volname=home -o follow_symlinks"
alias umountfive="umount /mnt/mnemo5/dblyon"
################################################################################
################################################################################
### antigen from https://github.com/zsh-users/antigen
source /usr/local/share/antigen/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
antigen bundle compleat
# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# Load the theme.
antigen bundle tarruda/zsh-autosuggestions
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
# Tell Antigen that you're done.
antigen apply
################################################################################

################################################################################
### https://github.com/caiogondim/bullet-train.zsh
### Powerline and Oh my zsh settings
# Path to your oh-my-zsh installation.
export ZSH=/Users/dblyon/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bullet-train" #"powerlevel9k/powerlevel9k" # "agnoster" #"bullet-train"

plugins=(
  git
  docker
  python
  osx
)

BULLETTRAIN_PROMPT_ORDER=(
  time
  context
  dir
  git
)

BULLETTRAIN_TIME_BG="yellow"
BULLETTRAIN_TIME_FG="default"

BULLETTRAIN_CONTEXT_BG="blue"
BULLETTRAIN_CONTEXT_FG="default"
# BULLETTRAIN_CONTEXT_DEFAULT_USER="dblyon"

BULLETTRAIN_DIR_BG="cyan"
BULLETTRAIN_DIR_FG="white"

BULLETTRAIN_GIT_BG="black"
BULLETTRAIN_GIT_FG="default"

source $ZSH/oh-my-zsh.sh

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
alias mmv='noglob zmv -W'

# set up aliases for recently used directories
setopt AUTOPUSHD
setopt PUSHDIGNOREDUPS
setopt pushdsilent
setopt pushdtohome
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# set up control + underscore to bring back the last word of the last line
bindkey "^_" insert-last-word

# set up ctrl-R to bring back previous commands with no duplicates
bindkey '^R' history-incremental-pattern-search-backward
zstyle ':completion:*:history-words' remove-all-dups yes

# alias for generating histogram
alias -g hist="sort | uniq -c | sort -n"

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

# Add any custom extensions here
compctl -k "( login.cbs.dtu.dk )" scp # change this to the servers you access often

autoload -Uz compinit && compinit -i

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

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/qt/bin:$PATH"
########################################################################################################################
### from https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/ for dotfiles on github
alias config='/usr/local/bin/git --git-dir=/Users/dblyon/.cfg/ --work-tree=/Users/dblyon'
