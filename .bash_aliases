# COLOURS
TEMP="\[\033[1;30m\]"
BLACK="\[\033[0;30m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
ORANGE="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
LIGHT_GRAY="\[\033[0;37m\]"
LIGHT_BLACK="\[\033[1;30m\]"
LIGHT_RED="\[\033[1;31m\]"
LIGHT_GREEN="\[\033[1;32m\]"
YELLOW="\[\033[1;33m\]"
LIGHT_BLUE="\[\033[1;34m\]"
LIGHT_PINK="\[\033[1;35m\]"
LIGHT_CYAN="\[\033[1;36m\]"
WHITE="\[\033[1;37m\]"
NO_COLOUR="\[\033[0m\]"
BLUE_BG="\[\033[0;44m\]"

# PROMPT
PS1="$LIGHT_BLUE[$WHITE\u$NO_COLOUR@$LIGHT_GREEN\h$LIGHT_BLUE][$WHITE\w$LIGHT_BLUE]\n$LIGHT_BLUE[$WHITE\t$LIGHT_BLUE]$NO_COLOUR\$ "

# EDITOR
export EDITOR="nano -wu"
export SVN_EDITOR="nano -wu"

# PATHS
export PATH=$PATH:~/bin
export JAVA_CMD=/usr/bin/java

# ALIASES
alias dir="ls -alh"
alias nano="nano -wu"
alias clearall="printf \"\033c\""
alias grepri="grep -ri --exclude-dir=\".svn\" --exclude-dir=\".idea\" --exclude-dir=\".git\""
alias gitlog='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
