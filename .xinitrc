#! /bin/bash
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# fcitx settings
export DefaultImModule=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIRES=@im=fcitx

# exec i3 when start X11
exec i3
