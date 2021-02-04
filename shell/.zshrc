export PATH="$HOME/.local/bin:$PATH"
export XDG_DATA_DIRS="$HOME/.local/share:/usr/share:/usr/local/share:$XDG_DATA_DIRS"
#export XDG_RUNTIME_DIR=/tmp/lemniskett
export XDG_CURRENT_DESKTOP=sway
export EDITOR="nvim"
export XDG_CURRENT_DESKTOP=sway
#export MOZ_ENABLE_WAYLAND=1
export _JAVA_AWT_WM_NONREPARENTING=1
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export PIPPATH="$HOME/.local/bin"
export PYTHONPATH="$HOME/.local/lib/python3.9/site-packages:$PIPPATH"

killall() {
    kill $(pidof $@)
}

PRIV="doas"
alias nixup="$PRIV nixos-rebuild switch"
alias nixrefresh="$PRIV nix-channel --update"
alias nixedit="nvim /etc/nixos/mokou.nix"
alias nixclean="$PRIV nix-collect-garbage -d; $PRIV nix-env --delete-generations old; $PRIV nixos-rebuild boot"
alias grep="grep --color=auto"
alias ls="exa --icons --classify --git"
cat_path=$(which cat)
alias cat="bat --plain --theme Nord"
alias rcat=$cat_path
alias sudo="echo 'Use doas'; "

[[ $(tty) = "/dev/tty1" ]] && mkdir -p /tmp/lemniskett && exec dbus-launch --sh-syntax --exit-with-session sway > ~/sway.log 2>&1
[[ -e /etc/arch-release ]] \
	&& cd ~

neofetch

source ~/.zsh-extensions/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.zsh-extensions/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zsh-extensions/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh-extensions/powerlevel10k/powerlevel10k.zsh-theme
source ~/.p10k.zsh 
