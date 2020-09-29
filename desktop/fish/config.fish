set TTY1 (tty)
if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
    killall pulseaudio 2>/dev/null
    killall autostart.sh 2>/dev/null
    killall battery_notify.sh 2>/dev/null
    # rm ~/.swayupdlog
    # touch ~/.swayupdlog
    rm ~/.sysupdlog
    touch ~/.sysupdlog
end
mkdir -p /tmp/swaytmp
chmod 0700 /tmp/swaytmp
set -x XDG_RUNTIME_DIR /tmp/swaytmp
set -x XDG_CONFIG_HOME $HOME/.config
set -x PATH $PATH /home/lemniskett/.cargo/bin /home/lemniskett/.local/share/bin /home/lemniskett/.local/bin/ /sbin /usr/sbin
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_CURRENT_DESKTOP Unity
#set -x QT_QPA_PLATFORM wayland
set -x MOZ_ENABLE_WAYLAND 1
set -x QT_QPA_PLATFORMTHEME qt5ct
set -x _JAVA_AWT_WM_NONREPARENTING 1
set -x SIXEL_BGCOLOR '#2e3440'
# set -x QT_STYLE_OVERRIDE kvantum
if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
    # dbus-launch --exit-with-session sway
    exec dbus-launch --sh-syntax --exit-with-session sway > ~/.swaylog 2> ~/.swayerrlog
    # exec startx
    # exec sway
end
exit
