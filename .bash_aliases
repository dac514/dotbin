# Git aware prompt - See: https://github.com/jimeh/git-aware-prompt
# With colors: https://github.com/jimeh/git-aware-prompt/blob/master/colors.sh
export GITAWAREPROMPT=~/code/github/jimeh/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# PROMPT
PS1="\[$bldblu\][\[$txtwht\]\u\[$txtrst\]@\[$bldgrn\]\h\[$bldblu\]][\[$txtwht\]\w\[$txtblu\]]\n\[$bldblu\][\[$txtwht\]\t\[$txtblu\]]\[$txtrst\]"
PS1="${PS1}\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] " # Git aware prompt
PS1="${PS1}\`if [ \$? = 0 ]; then echo \"\[$txtylw\]^_^\[$txtrst\]\"; else echo \"\[$txtred\]O_O\[$txtrst\]\"; fi\` " # Show happy face upon successful execution, angry face on fail

# EDITOR
export EDITOR="nano -wuc"
export SVN_EDITOR="nano -wuc"
export GIT_EDITOR="nano -wuc"

# PATHS
export PATH="$HOME/bin:$HOME/dotbin:$PATH"
export JAVA_CMD=/usr/bin/java

# ALIASES
alias dir="ls -alh"
alias nano="nano -wuc"
alias clearall="printf \"\033c\""
alias grepri="grep -ri --exclude-dir=\".svn\" --exclude-dir=\".idea\" --exclude-dir=\".git\""
alias gitlog='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias php-server='php -S localhost:8888 -t ~/public_html/'
alias npm-exec='PATH=$(npm bin):$PATH'

# HH - See: https://github.com/dvorka/hstr
export HH_CONFIG=hicolor  ### get more colors
shopt -s histappend ### append new history items to .bash_history
export HISTCONTROL=ignorespace:ignoreboth:erasedups ### leading space hides commands from history, avoid duplicate entries in .bash_history
export HISTFILESIZE=10000 ### increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE} ### increase history size (default is 500)
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}" ### mem/file sync
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hh \C-j"'; fi

# NVM - See: https://github.com/creationix/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion
