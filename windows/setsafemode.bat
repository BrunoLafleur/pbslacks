@echo off
REM Auteur : Pierre Brochard (pierre.brochard.1982@m4x.org)
REM Date : 2019
REM License : See the LICENSE file in the top repository.
echo Met Windows en mode sans echec au prochain redémarrage.
echo Vous devez etre en mode administrateur.
echo -------------------------------------------------------------------------
echo Utile pour ensuite passer de SATA RAID a SATA AHCI dans le BIOS de la machine.
echo Le mode SATA RAID n'est pas supporte par Linux.
echo Le mode sans echec permet ensuite a Windows de charger le driver AHCI desactive
echo car non necessaire en mode SATA RAID.
echo Vous aurez besoin du mot de passe apres redemarrage en mode sans echec.
echo Le code a 4 chiffres propose par Microsoft lors de l'installation de Windows
echo ne sera pas actif. Verifiez que vous avez ce mot de passe avant de redemarrer.
echo -------------------------------------------------------------------------

bcdedit /set {current} safeboot minimal
echo Vous pouvez maintenant redemarrer la machine et aller dans le BIOS
echo pour le mettre en mode SATA AHCI.
echo La commande setnormalmode permettra ensuite de remettre le mode normal.
pause
