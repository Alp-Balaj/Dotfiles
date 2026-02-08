# Command for fastfetch when first running the shell (opening the terminal)
fastfetch

# Path to Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Path to OMP theme
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/alp-theme.json)"

# Just a reminder to update when it's time, frequency every 13 days.
zstyle ':omz:update' mode reminder  
zstyle ':omz:update' frequency 13

# When waiting for a command. it will show "Waiting..." in yellow
COMPLETION_WAITING_DOTS="%F{yellow}Waiting...%f"

# Zsh plugins that run when opening terminal.
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Aliases

# zsh
alias cl="clear; fastfetch"
alias rz="clear; exec zsh"
alias ll="ls -a"

# dotnet
alias db="dotnet build"
alias dc="dotnet clean"
alias dr="dotnet run --project"
alias dmigration="dotnet ef migrations add"
alias dbupdate="dotnet ef database update --project"

# git
alias gs="git status"
alias gp="git pull"
alias gd="git diff"

# zed (a lightweight code editor). Dependency: sudo pacman -S zed
alias zed="zed"

# system
alias flej="systemctl suspend"
alias ntm="poweroff"

export TERM=xterm-256color
export PATH="$PATH:$HOME/.dotnet/tools"

# Load Angular CLI autocompletion. Dependency: npm i -g @angular/cli 
source <(ng completion script)