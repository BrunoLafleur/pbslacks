@echo off
echo Enleve le mode de cryptage du disque Windows.
echo Vous devez etre en mode administrateur.
echo A noter que Linux peut supporter ce mode.
echo -------------------------------------------------------------------------

if not defined "%1" (
    echo "Quel lettre de disque dur voulez-vous décrypter "
    set /p ldev="(c: si pas de nom) ? "
) else (set ldev="%1")
if "%ldev%" == "" (set ldev="c:")

manage-bde -off %ldev%
pause
