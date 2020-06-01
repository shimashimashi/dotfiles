source ~/.bashrc
source ~/.git-prompt.sh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="/usr/local/opt:$PATH"
export PATH="/usr/local/Cellar:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export CPATH=/usr/local/cuda/include:$CPATH
export PATH=/usr/local/cuda-9.1/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-9.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda/extras/CUPTI/lib64:$LD_LIBRARY_PATH

export PROMPT_DIRTRIM=2
export PS1='\[\e[1;32m\]\u\[\e[m\]:\[\e[1;34m\]\w \[\e[1;32m$(__git_ps1 "[%s]")\[\e[1;34m\]\$\[\e[m\] '
