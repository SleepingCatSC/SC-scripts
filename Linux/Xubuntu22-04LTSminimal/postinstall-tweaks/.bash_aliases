alias all-commands="compgen -c | sort | uniq | less"
alias clip="xclip -se c -r"
alias cls="clear"
alias cp="cp -p"
alias md="mkdir -p"
alias mic-loop-off="pactl unload-module module-loopback"
alias mic-loop-on="pactl load-module module-loopback latency_msec=1 > /dev/null"
alias mkdir="mkdir -p"
alias myip="curl ifconfig.me"
alias stat='stat -c "%A %a %n"'
alias std="shutdown +0"
alias su="sudo su"
alias sxiv-a='(find . -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \) | sort | sxiv -fio&)'
alias sxiv-at='(find . -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \) | sort | sxiv -ftio&)'
alias sxiv="sxiv -f"
alias x="exit"
alias zathura="zathura --mode=fullscreen"