@echo off
REM Auteur : Pierre Brochard (pierre.brochard.1982@m4x.org)
REM Date : 2019
REM License : See the LICENSE file in the top repository.
echo Met Windows en mode sans �chec au prochain red�marrage.
echo Vous devez etre en mode administrateur.
echo -------------------------------------------------------------------------
echo Utile pour ensuite passer de SATA RAID � SATA AHCI dans le BIOS de la machine.
echo Le mode SATA RAID n'est pas support� par Linux.
echo Le mode sans �chec permet ensuite � Windows de charger le driver AHCI d�sactiv�
echo car non n�cessaire en mode SATA RAID.
echo Vous aurez besoin du mot de passe apr�s red�marrage en mode sans �chec.
echo Le code � 4 chiffres propos� par Microsoft lors de l'installation de Windows
echo ne sera pas actif. V�rifiez que vous avez ce mot de passe avant de red�marrer.
echo -------------------------------------------------------------------------

bcdedit /set {current} safeboot minimal
echo Vous pouvez maintenant red�marrer la machine et aller dans le BIOS
echo pour le mettre en mode SATA AHCI.
echo La commande setnormalmode permettra ensuite de remettre le mode normal.
pause
