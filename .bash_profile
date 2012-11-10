### TERMINAL OPTIONS ###

export CLICOLOR=1                           # enable terminal colours
export LSCOLORS=dxfxcxbxcxegedabagacad      # set terminal colours


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

alias ls='ls -GFh'                          # list colourized + filetype character extensions + human-readable
alias ll='ls -l'                            # list detailed
alias la='ls -A'                            # list all files except . and ..
alias lla='ls -lA'                          # list all files with detail
alias dir='ls -1'                           # windows-style list (vertical list)

alias grep='grep --color=auto'              # grep colourized
alias egrep='egrep --color=auto'            # egrep colourized
alias fgrep='fgrep --color=auto'            # fgrep colourized
alias grepr='grep -r'                       # grep through files and directories recursively

alias f='find . | grep'                     # quick file search

alias svim='sudo vim'                       # vim as another user

alias fd='pushd'                            # short form (f = forward)
alias bd='popd'                             # short form (b = back)

alias ssh_zhi='ssh zhihaojia@zhihaojia.com'
alias ssh_uw='ssh -Y z3jia@linux.student.cs.uwaterloo.ca'


### FUNCTIONS ###

# Source separate alias file
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# Source separate functions file
if [ -f "${HOME}/.bash_functions" ]; then
  source "${HOME}/.bash_functions"
fi

