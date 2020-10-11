#  __  __ ___ ____  ____    _________  _   _ ____   ____
# |  \/  |_ _|  _ \/ ___|  |__  / ___|| | | |  _ \ / ___|
# | |\/| || || |_) \___ \    / /\___ \| |_| | |_) | |    
# | |  | || ||  __/ ___) |  / /_ ___) |  _  |  _ <| |___ 
# |_|  |_|___|_|   |____/  /____|____/|_| |_|_| \_\\____|

#Loads Tmux
#exec tmux

neofetch

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Archive Extraction
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

#Alias
alias vm="sudo virt-manager"
alias nas="sh ~/.config/mountnetworkdrive.sh"
alias tarball="tar -czvf"
alias cls="clear"
alias vrc="emacs ~/.emacsrc"
alias zrc="emacs ~/.zshrc"
alias rc="bash ~/.hiddenscrips/nrc.sh"
alias speed="speedtest-cli"
alias tconf="emacs ~/.tmux.conf"
alias lock="i3lock -c 000000 -f -e"
alias gateway="ip route | grep default"
alias ll="ls -lh --color"
alias ls="ls --color"
alias vpn="sudo protonvpn"
alias vpnc="sudo protonvpn c -f"
alias youtube-dl="bash youtube-dl"
alias nb="newsboat"
alias nba="emacs ~/.newsboat/urls"
alias emacs="emacsclient -a '' -c"
alias ta="tmux a"

#Lynx
alias lynx="lynx -cfg=~/.config/lynx/lynx.cfg -lss=~/.config/lynx/lynx.lss"
duck ()
{
    lynx -cfg=~/.config/lynx/lynx.cfg -lss=~/.config/lynx/lynx.lss "duckduckgo.com/lite?kd=-1&kp=-1&q=$*"
}
alias '?'="duck"
#Git
alias gc="git commit -m'"
alias ga="git add . && git status"
alias gp="git push"

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

#Vi mode
set -o vi mode

#bindkey '^h' _comp_options+=(globdots)	# Include hidden files.

#zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept

#Startx
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

source /home/mip/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

