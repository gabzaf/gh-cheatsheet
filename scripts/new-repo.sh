#!/usr/bin/env bash
# Cria um repo no GitHub, já na branch main, com commit inicial e colaborador opcional.
# Uso: new-repo.sh NOME [--public] [--collab USUARIO]
set -euo pipefail

usage() { echo "uso: $0 NOME [--public] [--collab USUARIO]" >&2; exit 1; }

[ $# -ge 1 ] || usage
NAME=$1; shift
VISIBILITY=--private
COLLAB=""

while [ $# -gt 0 ]; do
	case $1 in
		--public) VISIBILITY=--public ;;
		--collab) [ $# -ge 2 ] || usage; COLLAB=$2; shift ;;
		*) usage ;;
	esac
	shift
done

command -v gh > /dev/null || { echo "gh não instalado" >&2; exit 1; }
OWNER=$(gh api user --jq .login)

if [ -e "$NAME" ]; then
	echo "pasta ./$NAME já existe" >&2; exit 1
fi

echo "===> Criando $OWNER/$NAME ($VISIBILITY)"
gh repo create "$NAME" "$VISIBILITY" --clone
cd "$NAME"

git symbolic-ref HEAD refs/heads/main
echo "# $NAME" > README.md
git add README.md
git commit -q -m "initial commit"
git push -q -u origin main

if [ -n "$COLLAB" ]; then
	echo "===> Convidando $COLLAB"
	gh api -X PUT "repos/$OWNER/$NAME/collaborators/$COLLAB" -f permission=push > /dev/null
fi

echo "===> Pronto: https://github.com/$OWNER/$NAME (pasta ./$NAME)"
