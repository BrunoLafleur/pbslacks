@echo off
echo A lancez avant d'arrêter la machine pour qu'elle ne reste pas en mode d'hibernation.
echo Vous devez etre en mode administrateur.
echo -------------------------------------------------------------------------
echo Utile si on change le partionnement des disques sous Linux.
echo Dans ce cas Windows doit être arrêté pour qu'il relise la nouvelle géométrie des disques
echo Si le mode d'hibernation est activé, les partitions ne seront pas relues et
echo le ou les disques seront corrompus.
echo -------------------------------------------------------------------------

powercfg /h off
echo Vous pouvez maintenant arrêter la machine.
echo Vous pouvez aussi désactiver "Secure Boot" dans le BIOS avant de redémarrer sous Linux.
pause
