# Niveau 3 : Une aiguille dans une botte de foin

**Objectif** : chercher efficacement dans un fichier de 600 lignes.

**Mission** : `journaux/serveur.log` contient une seule ligne marquée `ALERTE`. Elle cache le drapeau.

## Commandes utiles
- `grep "mot" fichier` : affiche les lignes contenant « mot »
- `grep -c "mot" fichier` : compte les lignes
- `wc -l fichier` : nombre de lignes du fichier

## Pourquoi c'est important
Dans un vrai SOC, on ne lit jamais les journaux à la main : on filtre.
