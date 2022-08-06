#! /bin/sh

cp lang.* pbalias.sh pbgnomekeyring.sh /etc/profile.d
# Analogue a pbgnomekeyring.sh : tester ce dernier
cp xprofile /etc
cp csh.cshrc /etc

if [ `ls /usr/share/X11/xorg.conf.d/90-* 2> /dev/null|wc -l` -eq 0 ] ;then
  cp /usr/share/X11/xorg.conf.d/90-* /etc/X11/xorg.conf.d
  echo "Changez clavier dans `ls /etc/X11/xorg.conf.d/90-*`"
fi

echo 'Pour gnome-keyring, ajoutez le contenu de pamdlogin dans /etc/pam.d/login'
#cp bash_profile ~/.bash_profile
