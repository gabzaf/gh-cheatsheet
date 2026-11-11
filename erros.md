# Erros comuns

| Erro | Causa | Solução |
|---|---|---|
| `src refspec main does not match any` | branch local é `master` (ou não há commit) | `git branch -M main && git push -u origin main` |
| `Permission denied (publickey)` | remote em SSH sem chave configurada | `gh auth setup-git` e use URL HTTPS, ou `ssh-keygen` + `gh ssh-key add` |
| `! [rejected] ... (fetch first)` | remoto tem commits que você não tem | `git pull --rebase && git push` |
| `HTTP 404` no `gh api` | repo privado sem acesso, ou caminho errado | conferir `OWNER/REPO` e `gh auth status` |
| `HTTP 403 ... delete_repo` | token sem escopo | `gh auth refresh -s delete_repo` |
