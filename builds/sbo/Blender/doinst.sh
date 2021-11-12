if [ -x /usr/bin/update-desktop-database ]; then
  /usr/bin/update-desktop-database -q usr/share/applications >/dev/null 2>&1
fi

if [ -e usr/share/icons/hicolor/icon-theme.cache ]; then
  if [ -x /usr/bin/gtk-update-icon-cache ]; then
    /usr/bin/gtk-update-icon-cache -f usr/share/icons/hicolor >/dev/null 2>&1
  fi
fi

if [ "`grep rc.nvidia /etc/rc.d/rc.local|wc -l`" -eq 0 ] ;then
    cat <<EOF >> /etc/rc.d/rc.local

if [ -x /etc/rc.d/rc.nvidia ]
   /etc/rc.d/rc.nvidia
fi
EOF
fi
