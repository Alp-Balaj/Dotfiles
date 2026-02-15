fastfetch

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Oh-my-posh theme for the zshell
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/alp-theme.json)"

# show "Waiting..." whilst waiting for completion.
COMPLETION_WAITING_DOTS="%F{yellow}Waiting...%f"

# Zsh pluggins, 
# Git for git support, i believe it's self explanatory
# Zsh-Autosuggestions when pressing tab it will autosuggest commands, and directories
# Zsh-syntax-highlighting I have no clue what this does it might have to do with showing pre run successful commands.
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# This sources the file responsible for loading oh-my-zsh with all its functionalities.
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='zed'
fi

# Personal Aliases created by me to make my life easier.

# zsh
alias cl="clear; fastfetch"
alias rz="clear; exec zsh"
alias ll="ls -a"

#dotnet
alias db="dotnet build"
alias dc="dotnet clean"
alias dr="dotnet run --project"
alias dmigration="dotnet ef migrations add"
alias dbupdate="dotnet ef database update --project"

# git
alias gs="git status"
alias gp="git pull"
alias gd="git diff"

# zed
alias zed="zeditor"

# system
alias flej="systemctl suspend"
alias ntm="poweroff"

export TERM=xterm-256color

# Load dotnet tools as well as CLI.
export PATH="$PATH:$HOME/.dotnet/tools"

# Load Angular CLI autocompletion.
source <(ng completion script)
