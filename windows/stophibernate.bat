@echo off
echo A lancez avant d'arr�ter la machine pour qu'elle ne reste pas en mode d'hibernation.
echo Vous devez etre en mode administrateur.
echo -------------------------------------------------------------------------
echo Utile si on change le partionnement des disques sous Linux.
echo Dans ce cas Windows doit �tre arr�t� pour qu'il relise la nouvelle g�om�trie des disques
echo Si le mode d'hibernation est activ�, les partitions ne seront pas relues et
echo le ou les disques seront corrompus.
echo -------------------------------------------------------------------------

powercfg /h off
echo Vous pouvez maintenant arr�ter la machine.
echo Vous pouvez aussi d�sactiver "Secure Boot" dans le BIOS avant de red�marrer sous Linux.
pause
