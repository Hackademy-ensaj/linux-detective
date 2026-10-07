# Contribuer

Les idées de niveaux sont les bienvenues (processus, cron, SSH, hachage...).

1. Fais un fork du dépôt.
2. Ajoute ton niveau dans `levels/`, la génération dans `setup.sh` et le hash de la
   réponse dans `.hashes` : `printf '%s' "REPONSE" | sha256sum`.
3. Teste avec `./setup.sh` puis `./check.sh`.
4. Ouvre une pull request.

Règle d'or : un niveau doit être faisable par un débutant total avec les consignes seules.
