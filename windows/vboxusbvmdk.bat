@echo off
echo Associe une cle USB avec un nom d'image iso en .vmdk pour VirtualBox.
echo Permet d'installer un système à partir d'une cle USB.
echo Vous devez etre en mode administrateur.
echo -------------------------------------------------------------------------
echo Branchez la cle USB et regardez le numero de peripherique de la cle avec :
echo "Gestionnaire de fichiers -> Clic droit sur Ordinateur -> Gerer"
echo    puis "Stockage -> Gestion des disques"
echo    et regarder le numero de peripherique de la cle USB.
echo -------------------------------------------------------------------------

if not defined "%1" (
    echo "Quel nom de fichier voulez-vous pour le lien "
    set /p filename="(%USERPROFILE%\usb.vmdk si pas de nom) ? "
) else (set filename="%1")
if "%filename%" == "" (set filename="%USERPROFILE%\usb.vmdk")

if not defined "%2" (
   echo "Quel est le numero de peripherique de la cle "
   set /p numdev="(1 => deuxieme disque si pas de numero) ? "
) else (set numdev=%2)
if "%numdev%" == "" (set numdev=1)

echo "%filename% sera le disque a utiliser en premier lors de la creation de la machine virtuelle."

if defined "%VBOX_MSI_INSTALL_PATH%" (set ovb="%VBOX_MSI_INSTALL_PATH%"
) else (set ovb="c:\Program Files\Oracle\VirtualBox")

cd /d "%ovb%"
vboxmanage internalcommands createrawvmdk -filename "%filename%" -rawdisk \\.\PhysicalDrive%numdev%
echo "%filename% cree."
pause
