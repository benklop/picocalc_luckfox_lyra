export PS1='\W\$ '

start_fbterm_with_fcitx()
{
    eval `dbus-launch --auto-syntax`
    fcitx >/dev/null 2>&1
    fbterm -i fcitx-fbterm
    kill $DBUS_SESSION_BUS_PID
    fcitx-remote -e
}

alias ls='ls --color=auto'
alias grep='grep --color=auto'
if [ -z "$SSH_CONNECTION" ]; then
   if [[ "$(tty)" =~ /dev/console ]] then
        return
   elif [[ "$(tty)" =~ /dev/tty ]] && type fbterm > /dev/null 2>&1; then
        start_fbterm_with_fcitx
#        fbterm 
  # otherwise, start/attach to tmux and start fff
   elif [ -z "$TMUX" ] && type tmux >/dev/null 2>&1; then
        tmux new -As "$(basename $(tty))" 'cd ~/command-launcher; fff; cd ~; bash'
   fi
fi
