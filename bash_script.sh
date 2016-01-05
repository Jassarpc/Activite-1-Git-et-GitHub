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
# si le second paramètre est utilisé, on récupère l'option demandée
if [ ! -z $2 ]
then
  case "$2" in
    -r|--reverse) sort="sort -n -k 1" ;;
    -l|--letter) sort="sort -k 3" ;;
    *)
      echo "L'option $2 n'est pas disponible"
      exit
# si aucune option n'est fournie, le tri sera par défault
else
  sort="sort -rn -k 1"
fi
# on cherche le nombre d'occurence pour chaque lettre
for letter in {A..Z}
do
  result=`grep $letter $1 | wc -l`
  echo `grep $letter $1 | wc -l` "-" $letter
done | $sort
