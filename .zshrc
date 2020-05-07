export ZSH="/home/myralllka/.oh-my-zsh"
ZSH_THEME="xiong-chiamiov-plus"
export XDG_CONFIG_HOME="$HOME/.config"
HYPHEN_INSENSITIVE="true"
DISABLE_UPDATE_PROMPT="true"
#ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git
	zsh-autosuggestions
	zsh-syntax-highlighting
	k
)

source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit
export MANPATH="/usr/local/man:$MANPATH"
# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi
alias ls='colorls'
alias l='k'

alias p='ipython'
if [  "$TMUX" = "" ]; then tmux; fi
export PATH=/opt/cuda/bin:$PATH
setxkbmap -layout us,ua,ru
setxkbmap -option 'grp:win_space_toogle'
export PATH="$HOME/.cargo/bin:$PATH"
alias config='/usr/bin/git --git-dir=/home/myralllka/.cfg/ --work-tree=/home/myralllka'
