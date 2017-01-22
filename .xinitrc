#! /bin/bash
# load .Xresorces when start X
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
# load .Xmodmap
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# fcitx settings
export DefaultImModule=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIRES=@im=fcitx

# exec i3 when start X
exec i3

# Disable beep in X
xset -b
