#!/usr/bin/env bash
# Vérifie ta réponse sans jamais afficher la solution.
# Usage : bash check.sh <niveau> <réponse>
#   ex. : bash check.sh 1 "FLAG{...}"
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"

if [ $# -ne 2 ]; then
  echo "Usage : ./check.sh <niveau> <réponse>"
  exit 1
fi

HASH=$(printf '%s' "$2" | sha256sum | cut -d' ' -f1)
EXPECTED=$(grep "^$1 " "$DIR/.hashes" | cut -d' ' -f2)

if [ -z "$EXPECTED" ]; then
  echo "Niveau inconnu : $1 (niveaux disponibles : 1 à 5)"
  exit 1
fi

if [ "$HASH" = "$EXPECTED" ]; then
  echo "✅ Niveau $1 validé, bravo !"
else
  echo "❌ Ce n'est pas la bonne réponse. Relis la consigne et réessaie."
  exit 1
fi
