# Branches e push

```bash
git branch                       # branch atual
git branch -M main               # renomeia a branch atual para main
git switch -c feature/x          # cria e entra numa branch
git push -u origin main          # primeiro push (liga a branch local à remota)
git push                         # pushes seguintes

git pull --rebase                # atualizar sem commit de merge
git log --oneline --graph -15    # histórico compacto
```

## `master` vs `main`

O git antigo cria `master` por padrão. Se o push falhar com
`src refspec main does not match any`, a branch local se chama `master`:

```bash
git branch -M main && git push -u origin main
git config --global init.defaultBranch main   # evita de novo
```
