source ~/.zsh-extensions/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh-extensions/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh-extensions/powerlevel10k/powerlevel10k.zsh-theme

export PATH="$HOME/.local/bin:$PATH"
export XDG_DATA_DIRS="$HOME/.local/share:/usr/share:/usr/local/share:$XDG_DATA_DIRS"
export XDG_RUNTIME_DIR=/tmp/lemniskett
export EDITOR="nvim"
export XDG_CURRENT_DESKTOP=sway
export _JAVA_AWT_WM_NONREPARENTING=1
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

PRIV=sudo
alias nixup="$PRIV nixos-rebuild switch"
alias nixrefresh="$PRIV nix-channel --update"
alias nixedit="$PRIV nvim /etc/nixos/mokou.nix"
alias nixclean="$PRIV nix-collect-garbage -d; $PRIV nix-env --delete-generations old; $PRIV nixos-rebuild boot"
alias fet.sh="info='n user os kern wm sh mem col n' fet.sh"
alias grep="grep --color=auto"
alias ls="exa --icons --classify --git"
alias cat="bat --plain --theme OneHalfDark"

[[ $(tty) = "/dev/tty1" ]] && mkdir -p /tmp/lemniskett && exec dbus-launch --sh-syntax --exit-with-session sway > ~/sway.log 2>&1
[[ -e /etc/arch-release ]] \
	&& cd ~

neofetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
