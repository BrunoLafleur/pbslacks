@echo off
echo Remet Windows en mode normal au prochain red�marrage s'il �tait en mode sans �chec.
echo Vous devez etre en mode administrateur.
echo -------------------------------------------------------------------------
echo Utile une fois les drivers SATA AHCI charg�s en mode sans �chec pour repasser en mode normal.
echo -------------------------------------------------------------------------

bcdedit /deletevalue {current} safeboot
echo Vous pouvez maintenant red�marrer la machine et aller dans le BIOS
echo pour le mettre en mode SATA AHCI.
echo La commande setnormalmode permettra ensuite de remettre le mode normal.
pause
