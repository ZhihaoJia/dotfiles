### TERMINAL OPTIONS ###

export CLICOLOR=1                           # enable terminal colours
#export LSCOLORS=dxfxcxbxcxegedabagacad      # set terminal colours


### BASH OPTIONS ###

shopt -s cdable_vars                        # if cd arg not valid, assumes it's a var defining a dir
shopt -s cdspell                            # autocorrects minor cd misspellings
shopt -s checkwinsize                       # update value of LINES and COLUMNS after each command if altered
shopt -s cmdhist                            # save multi-line commands in history as single line
shopt -s dotglob                            # include dotfiles in pathname expansion
shopt -s expand_aliases                     # expand aliases
shopt -s extglob                            # enable extended pattern-matching features
shopt -s histappend                         # append to (not overwrite) the history file
shopt -s hostcomplete                       # attempt hostname expansion when @ at beginning of word


### BASH HISTORY ###

export HISTSIZE=500                         # bash history save n commands
export HISTFILESIZE=${HISTSIZE}             # bash remember n commands
export HISTIGNORE='\&:[fb]g:ls:pwd:exit'    # don't append commands to history
export HISTCONTROL=ignoreboth               # don't add duplicates and lines starting with space to history


### ENVIRONMENT VARIABLES ###

export EDITOR=/usr/bin/vim                  # set default text editor

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# Add /usr/local/bin before /usr/bin for homebrew
PATH="/usr/local/bin:${PATH}"
export PATH


### ALIASES ###

alias e='exit'                              # shortform for exit

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias t='top'                               # short top

alias ls='ls -GFh'                          # list colourized + filetype character extensions + human-readable
alias ll='ls -l'                            # list detailed
alias la='ls -A'                            # list all files except . and ..
alias lla='ls -lA'                          # list all files with detail
alias dir='ls -1'                           # windows-style list (vertical list)

alias fd='pushd'                            # short form (f = forward)
alias bd='popd'                             # short form (b = back)

alias with='open -a'                        # open file with application 'with APP_PATH FILE_PATH'
alias edit='open -e'                        # open file with TextEdit

alias grep='grep --color=auto'              # grep colourized
alias egrep='egrep --color=auto'            # egrep colourized
alias fgrep='fgrep --color=auto'            # fgrep colourized
alias grepr='grep -r'                       # grep through files and directories recursively
alias grepi='grep -i'                       # case-insensitive grep
alias grepri='grep -ri'                     # recursive, case-insensitive grep

alias psgrep='ps aux | grep'                # grep processes

alias f='find . | grep'                     # quick file search
alias fni='find . -iname'                   # recursive, case-insensitive file search from current directory

alias svim='sudo vim'                       # vim as superuser

alias g='git'
alias gs='git status'
alias gsh='git show'
alias gss='git show --stat'
alias gl='git log'
alias glo='git log --oneline'
alias glog='git log --oneline --graph'
alias glgs='git log --graph --stat'
alias glgsn='git log --graph --stat -n'
alias gd='git diff'
alias gds='git diff --stat'
alias gdd='git diff --staged'
alias gdc='git diff --cached'
alias ga='git add'
alias gc='git commit'
alias gca='git commit --all'
alias gpsh='git push'
alias gpll='git pull'
alias gm='git merge'
alias gb='git branch'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gr='git reset'
alias grs='git reset --soft'
alias grm='git remote'
alias gst='git stash'
alias gstl='git stash list'
alias gstd='git stash drop'
alias gg='git grep --color=auto'
alias ggi='git grep --color=auto -i'

alias ssh_zhi='ssh zhihaojia@zhihaojia.com'
alias ssh_uw='ssh -Y z3jia@linux024.student.cs.uwaterloo.ca'


### FUNCTIONS ###

# Source separate alias file
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# Source separate functions file
if [ -f "${HOME}/.bash_functions" ]; then
  source "${HOME}/.bash_functions"
fi

# Source Git completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
