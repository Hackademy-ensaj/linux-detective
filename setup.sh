#!/usr/bin/env bash
# Génère le « terrain d'enquête » dans ~/linux-detective-lab (ou le dossier passé en argument).
# Usage : ./setup.sh [dossier]
set -e

BASE="${1:-$HOME/linux-detective-lab}"
chmod -R u+rwx "$BASE" 2>/dev/null || true
rm -rf "$BASE"
mkdir -p "$BASE"/bureau/documents/archives/2025 "$BASE"/journaux "$BASE"/coffre

# --- Niveau 1 : navigation -------------------------------------------------
cat > "$BASE/bureau/documents/archives/2025/note.txt" << 'NOTE'
Bravo, tu as trouvé le bon dossier !
Le drapeau de ce niveau est : FLAG{le_terminal_cest_facile}
NOTE
echo "Rien d'intéressant ici." > "$BASE/bureau/documents/liste_courses.txt"
echo "Brouillon sans importance." > "$BASE/bureau/documents/archives/brouillon.txt"

# --- Niveau 2 : fichiers cachés -------------------------------------------
echo "FLAG{les_points_cachent_des_secrets}" > "$BASE/bureau/documents/.cache_secret"

# --- Niveau 3 : recherche dans un gros fichier ----------------------------
LOG="$BASE/journaux/serveur.log"
: > "$LOG"
for i in $(seq 1 600); do
  printf '2026-10-07 10:%02d:%02d INFO  service=web requete=%d statut=200\n' $((i / 60 % 60)) $((i % 60)) "$i" >> "$LOG"
  if [ "$i" -eq 417 ]; then
    echo "2026-10-07 10:06:57 ALERTE donnees=FLAG{grep_est_ton_ami}" >> "$LOG"
  fi
done

# --- Niveau 4 : permissions -----------------------------------------------
echo "FLAG{chmod_ouvre_les_portes}" > "$BASE/coffre/mission.txt"
chmod 000 "$BASE/coffre/mission.txt"

# --- Niveau 5 : analyser un journal d'authentification --------------------
AUTH="$BASE/journaux/auth.log"
: > "$AUTH"
gen() { # gen <ip> <nombre>
  for n in $(seq 1 "$2"); do
    printf 'Oct  7 11:%02d:%02d serveur sshd[%d]: Failed password for root from %s port 22\n' $((n % 60)) $(((n * 7) % 60)) $((1000 + n)) "$1" >> "$AUTH"
  done
}
gen 198.51.100.12 9
gen 203.0.113.66 37
gen 192.0.2.44 14
gen 198.51.100.200 5
# On mélange les lignes pour que ce ne soit pas trop évident
sort -R "$AUTH" -o "$AUTH"

echo "Terrain d'enquête prêt dans : $BASE"
echo "Commence par : cd $BASE   puis ouvre levels/niveau-1.md"
