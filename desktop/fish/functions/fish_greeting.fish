function fish_greeting
  [ (cat /etc/os) = "archlinux" ] && alias neofetch="/usr/bin/neofetch --config ~/.config/neofetch/arch-config.conf"
  neofetch
  cd ~
end
