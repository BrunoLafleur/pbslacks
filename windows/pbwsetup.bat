@echo off
REM Auteur : Pierre Brochard (pierre.brochard.1982@m4x.org)
REM Date : 2019
REM License : See the LICENSE file in the top repository.
echo Permet de choisir les actions suivantes :
echo.
echo   -Lance le gestionnaire de disque.
echo   -Met le systeme en mode sans echec.
echo     +On peut ensuite dans le BIOS mettre SATA AHCI au lieu de SATA RAID.
echo   -Remet le systeme en mode normal.
echo   -Annule le mode de cryptage du disque dur avec Bitlocker.
echo   -Arrete le mode d'hibernation lors du prochain arret de la machine.
echo.
echo Voulez-vous lancer le gestionnaire de disque 
set /p rep="(y(es) ou n(on) ?"
if "%rep%" == "y" (lancediskmgr.bat)

echo Voulez-vous passer le systeme en mode sans echec au prochain redemarrage
set /p rep="(y(es) ou n(on) ?"
if "%rep%" == "y" (setsafemode.bat)

echo Voulez-vous passer le systeme en mode normal au prochain redemarrage
set /p rep="(y(es) ou n(on) ?"
if "%rep%" == "y" (setnormalmode.bat)

echob Voulez-vous decrypter le disque dur crypte avec Bitlocker
set /p rep="(y(es) ou n(on) ?"
if "%rep%" == "y" (stopcryptbitlocker.bat)

echo Voulez-vous empecher le mode d'hibernation au prochain arret de la machine
set /p rep="(y(es) ou n(on) ?"
if "%rep%" == "y" (stophibernate.bat)

pause
