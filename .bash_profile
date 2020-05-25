source ~/.bashrc
source ~/.git-prompt.sh
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias ll="ls -l"
export PATH="/usr/local/opt:$PATH"
export PATH="/usr/local/Cellar:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="/usr/local/opt/node@12/bin:$PATH"

export PROMPT_DIRTRIM=2
export PS1='\H:\w \u \[\e[1;32m $(__git_ps1 "(%s)") \[\e[0m\] \$ '']'
