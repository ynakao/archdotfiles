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

# If only left control pressed, remap Esc.
xcape -e 'Control_L=Escape'

# Disable beep in X
xset -b

# exec i3 when start X
exec i3
