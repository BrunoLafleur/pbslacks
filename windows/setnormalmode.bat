@echo off
REM Auteur : Pierre Brochard (pierre.brochard.1982@m4x.org)
REM Date : 2019
REM License : See the LICENSE file in the top repository.
echo Remet Windows en mode normal au prochain redemarrage s'il etait en mode sans echec.
echo Vous devez etre en mode administrateur.
echo -------------------------------------------------------------------------
echo Utile une fois les drivers SATA AHCI charges en mode sans echec pour repasser en mode normal.
echo -------------------------------------------------------------------------

bcdedit /deletevalue {current} safeboot
echo Vous pouvez maintenant redemarrer la machine et aller dans le BIOS
echo pour le mettre en mode SATA AHCI.
echo La commande setnormalmode permettra ensuite de remettre le mode normal.
pause
