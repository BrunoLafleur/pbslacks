@echo off
REM Auteur : Pierre Brochard (pierre.brochard.1982@m4x.org)
REM Date : 2019
REM License : See the LICENSE file in the top repository.
echo Enleve le mode de cryptage du disque Windows.
echo Vous devez etre en mode administrateur.
echo A noter que Linux peut supporter ce mode.
echo -------------------------------------------------------------------------

if not defined "%1" (
    echo Quel lettre de disque dur voulez-vous decrypter
    set /p ldev="(c: si pas de nom) ? "
) else (set ldev="%1")
if "%ldev%" == "" (set ldev="c:")

manage-bde -off %ldev%
pause
