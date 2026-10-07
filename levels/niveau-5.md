# Niveau 5 : Qui nous attaque ?

**Objectif** : repérer une attaque par force brute dans un journal.

**Contexte** : `journaux/auth.log` contient des tentatives de connexion SSH échouées.
Une adresse IP a essayé beaucoup plus que les autres : c'est l'attaquant.

**Mission** : trouve l'adresse IP qui apparaît le plus souvent. Ta réponse est l'adresse seule,
par exemple `bash check.sh 5 "1.2.3.4"`.

## Indices (du plus léger au plus fort)
1. Chaque ligne contient `from <adresse IP>`.
2. `grep -o "from [0-9.]*" fichier` extrait seulement cette partie.
3. `sort` classe, `uniq -c` compte les doublons, `sort -rn` classe du plus grand au plus petit.
4. On enchaîne les commandes avec `|` (le « tube »).

## Pour aller plus loin
Écris un petit script bash qui affiche automatiquement le top 3 des IP.
Tu viens de faire ton premier travail d'analyste SOC.
