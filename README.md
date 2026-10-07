# 🕵️ Linux Detective

Une mini-enquête dans le terminal pour **débuter sur Linux**, sans aucun prérequis.
Projet de la cellule projets du club de cybersécurité.

Tu travailles chez toi, à ton rythme, avec ce que tu as déjà. Aucune connaissance
en informatique ou en cybersécurité n'est nécessaire : tout s'apprend en chemin.

## Ce que tu vas apprendre

- Te déplacer dans l'arborescence (`pwd`, `ls`, `cd`, `cat`)
- Trouver les fichiers cachés (`ls -a`)
- Chercher dans de gros fichiers (`grep`, `find`)
- Comprendre les permissions (`chmod`, `ls -l`)
- Analyser un journal de connexions pour repérer une attaque (`sort`, `uniq`, `cut`)

## Ce qu'il te faut

Choisis **une** option selon ton matériel :

- **Linux ou macOS** : ouvre simplement un terminal.
- **Windows 10/11** : installe WSL (`wsl --install` dans PowerShell), puis ouvre Ubuntu.
- **Pas de Linux ou PC léger** : utilise un terminal en ligne gratuit (par exemple GitHub Codespaces).
- **Tu connais Docker** : utilise le `Dockerfile` fourni (voir plus bas).

## Démarrage

```bash
git clone https://github.com/<ton-compte-ou-celui-du-club>/linux-detective.git
cd linux-detective
./setup.sh
```

Le script crée ton terrain d'enquête dans `~/linux-detective-lab`.
Ensuite ouvre `levels/niveau-1.md` et suis les consignes.

Quand tu penses avoir trouvé la réponse :

```bash
./check.sh 1 "FLAG{ta_reponse}"
```

Le script te dit si c'est bon, sans jamais révéler la solution.

## Les niveaux

1. **Le bon dossier** : navigation dans l'arborescence
2. **Rien ne se cache** : fichiers cachés
3. **Une aiguille dans une botte de foin** : `grep`
4. **Porte verrouillée** : permissions
5. **Qui nous attaque ?** : analyse d'un journal d'authentification

## Livrable (pour ton CV)

Copie `docs/rapport-modele.md`, remplis-le avec tes commandes et captures d'écran,
puis publie-le sur ton propre GitHub (fork du dépôt). Tu auras une première réalisation
concrète à présenter.

## Docker (optionnel)

```bash
docker build -t linux-detective .
docker run -it linux-detective
```

> ⚠️ Si tu lances `setup.sh` en tant que **root**, le niveau 4 n'a plus de sens
> (root ignore les permissions). Utilise ton compte normal, ou le Dockerfile fourni
> qui crée un utilisateur non-root.

## Tu bloques ?

Regarde `docs/aide-memoire.md`, puis pose ta question sur le Discord du club.
Utilise `man <commande>` ou `<commande> --help` : c'est le réflexe d'un vrai admin système.

## Contribuer

Une idée de niveau ? Ouvre une *issue* ou une *pull request*, voir `CONTRIBUTING.md`.
