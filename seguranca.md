# Segurança em repo público

## Nunca commitar

- tokens (`gho_`, `ghp_`), saída de `gh auth status`
- `~/.kube/config`, senhas (ex.: senha inicial do Argo CD), `.env`, chaves `.pem`/`.key`
- e-mails e usuários de outras pessoas → use placeholders

O [.gitignore](.gitignore) deste repo já bloqueia os arquivos mais comuns.

## Conferir antes de tornar público

```bash
git log -p | grep -nEi 'gh[op]_|password|senha|secret|token' || echo "nada encontrado"
git grep -nEi 'gh[op]_|password|senha|secret|token'
```

Ferramenta dedicada: [gitleaks](https://github.com/gitleaks/gitleaks) — `gitleaks detect`.

## Se vazou

1. **Revogue/troque o segredo primeiro** (apagar o commit não basta: o histórico e forks guardam).
2. Depois limpe o histórico com `git filter-repo` e faça `git push --force`.
