# Setup do `gh`

```bash
# Debian/Ubuntu (repositório oficial)
sudo apt install gh

gh --version
gh auth login              # escolha GitHub.com > HTTPS > login pelo navegador
gh auth status             # NÃO cole a saída disso em lugar público
gh auth refresh -s delete_repo   # adiciona permissão extra (ex.: apagar repos)
```

Git com a identidade certa:

```bash
git config --global user.name "SEU NOME"
git config --global user.email "SEU_EMAIL"
git config --global init.defaultBranch main   # repos novos já nascem em main
git config --global --list                    # conferir
```
