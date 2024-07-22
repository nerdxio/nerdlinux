# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    aliases
    sudo
    docker
    docker-compose
    zsh-autosuggestions
)

alias y="yazi"
alias nerd="nerdfetch"
alias al="alsamixer"
alias vim="nvim"
alias i="sudo pacman -Sy"
alias s="sudo pacman -Ss"
alias y="sudo yay -Sy"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias drm="docker ps rm"
alias fetch="neofetch"
alias ll="exa -l"

export LIBVA_DRIVER_NAME=i965
export LIBVA_DRIVER_NAME=vdpau


# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/nerdxio/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$PATH:/path/to/vercel
export NPM_CONFIG_PREFIX=~/.npm-global
export PATH=/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/nerdxio/.local/share/JetBrains/Toolbox/scripts:/home/nerdxio/WebstormProjects/shopify-otp-back/node_modules/.bin:/path/to/vercel:/home/nerdxio/.npm-global/bin:~/.npm-global/bin
export PATH=$PATH:/home/nerdxio/go/bin

source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=50000


