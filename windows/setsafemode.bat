@echo off
REM Auteur : Pierre Brochard (pierre.brochard.1982@m4x.org)
REM Date : 2019
REM License : See the LICENSE file in the top repository.
echo Met Windows en mode sans échec au prochain redémarrage.
echo Vous devez etre en mode administrateur.
echo -------------------------------------------------------------------------
echo Utile pour ensuite passer de SATA RAID à SATA AHCI dans le BIOS de la machine.
echo Le mode SATA RAID n'est pas supporté par Linux.
echo Le mode sans échec permet ensuite à Windows de charger le driver AHCI désactivé
echo car non nécessaire en mode SATA RAID.
echo Vous aurez besoin du mot de passe après redémarrage en mode sans échec.
echo Le code à 4 chiffres proposé par Microsoft lors de l'installation de Windows
echo ne sera pas actif. Vérifiez que vous avez ce mot de passe avant de redémarrer.
echo -------------------------------------------------------------------------

bcdedit /set {current} safeboot minimal
echo Vous pouvez maintenant redémarrer la machine et aller dans le BIOS
echo pour le mettre en mode SATA AHCI.
echo La commande setnormalmode permettra ensuite de remettre le mode normal.
pause
