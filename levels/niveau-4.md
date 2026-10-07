# Niveau 4 : Porte verrouillée

**Objectif** : comprendre les permissions Linux.

**Mission** : `coffre/mission.txt` est illisible. Rends-le lisible, puis lis-le.

## Commandes utiles
- `ls -l coffre/` : affiche les permissions (ex. `-rw-r--r--`)
- `chmod u+r fichier` : donne le droit de lecture au propriétaire
- `cat fichier`

## À comprendre
Les permissions se lisent par blocs de trois : propriétaire, groupe, autres,
avec `r` (lire), `w` (écrire), `x` (exécuter).

## Question de réflexion
Pourquoi est-il dangereux de faire `chmod 777` sur un fichier ?

> Si tu es connecté en root, ce niveau ne bloque pas. Utilise un compte normal.
