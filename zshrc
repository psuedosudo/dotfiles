export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export NCSPOT_CACHE_PATH="/home/lll/.cache/ncspot"

path+=('/home/lll/.scripts')
path+=('/home/lll/.local/share/localbin')
fpath+=('/usr/share/zsh/vendor-completions')

ZSH_THEME="af-magic"

plugins=(git)

source $ZSH/oh-my-zsh.sh

eval $(thefuck --alias)
eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"
eval "$(atuin init zsh)"


# alias cd="z"
alias vim="nvim"
alias ls="exa -lh --git-repos"
alias yt="ytfzf -t"
alias bt="bluetoothctl"
alias neo="neo --colormode=0"
alias mpvn="mpv --loop-playlist .wallpaper.png"

alias vlan="sudo openvpn --config ~/.ovpn/vlan.Magus.ovpn --daemon"
# alias vpn="sudo openvpn --config ~/.ovpn/pia.texas.ovpn --daemon"
#
alias earbuds="bt connect 88:C9:E8:34:39:3F"
alias speakers="bt connect A0:E9:DB:01:F3:B0"
alias headphones="bt connect 00:0A:45:19:FD:7E"

alias m="sudo mount"
alias um="sudo umount"
alias mgd="rclone mount --daemon 'Google Drive:' ~/GDrive"
alias smb-wc="rclone mount --daemon 'watercut:' ~/SMB/WaterCut"

