function fish_greeting
  [ (cat /etc/os) = "archlinux" ] && alias neofetch="/usr/bin/neofetch --config ~/.config/neofetch/arch-config.conf"
  alias sysupd="doas emerge --sync && doas layman -s calculate && doas emerge --update --deep --newuse --with-bdeps=y --keep-going @world; archshell trizen -Syu"
  neofetch
  cd ~
end
