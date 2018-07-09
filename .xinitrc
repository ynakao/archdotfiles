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

# CapsLock short press esc
# long press control
# https://www.reddit.com/r/emacs/comments/6cv3ff/evil_mode_users_do_you_bind_caps_lock_to_esc_or/dhxoksw/
setxkbmap -option ctrl:nocaps
xcape -e 'Control_L=Escape' -t 175

# Disable beep in X
xset -b

# Configuration of Qt5 apps under environments other than KDE Plasma
# https://wiki.archlinux.org/index.php/Qt#Configuration_of_Qt5_apps_under_environments_other_than_KDE_Plasma
[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"

# exec i3 when start X
exec i3
