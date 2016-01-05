#!/bin/bash

# on affiche un message d'erreur si on n'a pas fourni le nom du fichier
if [ -z $1 ]
then
  echo "Veuillez indiquer un fichier à analyser"
  exit
# si le fichier est indiqué on vérifie son existence
elif [ ! -e $1 ]
then
  echo "le fichier $1 n'a pas été trouvé, vérifiez que le nom est correct"
  exit
fi
