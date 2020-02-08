@echo off
echo Remet Windows en mode normal au prochain redémarrage s'il était en mode sans échec.
echo Vous devez etre en mode administrateur.
echo -------------------------------------------------------------------------
echo Utile une fois les drivers SATA AHCI chargés en mode sans échec pour repasser en mode normal.
echo -------------------------------------------------------------------------

bcdedit /deletevalue {current} safeboot
echo Vous pouvez maintenant redémarrer la machine et aller dans le BIOS
echo pour le mettre en mode SATA AHCI.
echo La commande setnormalmode permettra ensuite de remettre le mode normal.
pause
