@echo off
REM Auteur : Pierre Brochard (pierre.brochard.1982@m4x.org)
REM Date : 2019
REM License : See the LICENSE file in the top repository.
echo Lance le gestionnaire de disques.
echo Vous devez etre en mode administrateur.
echo Launch the disk manager.
echo You should be in administrator mode.
echo -------------------------------------------------------------------------
echo Choisir la ou les partitions � r�duire (les plus grosses - ne pas toucher aux autres)
echo Avec le bouton de droite de la souris choisir "R�duire le volume"
echo Donner la taille � r�cup�rer (laisser au moins 10 % d'espace libre sur ce qu'il reste)
echo Cliquer sur r�duire
echo -------------------------------------------------------------------------

diskmgmt.msc
pause
