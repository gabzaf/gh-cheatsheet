# Repositórios

```bash
# Criar
gh repo create REPO --public --clone          # cria no GitHub e clona
gh repo create REPO --private --clone
gh repo create REPO --private --source=. --push   # a partir de uma pasta local já com commits

# Ver
gh repo list                                   # seus repos
gh repo view OWNER/REPO                        # README no terminal
gh repo view OWNER/REPO --web                  # abre no navegador

# Clonar / forkar
gh repo clone OWNER/REPO
gh repo fork OWNER/REPO --clone

# Editar
gh repo edit OWNER/REPO --description "texto"
gh repo edit OWNER/REPO --default-branch main
gh repo edit OWNER/REPO --visibility public --accept-visibility-change-consequences

# Apagar (precisa do escopo delete_repo — ver setup.md)
gh repo delete OWNER/REPO --yes
```

> Dica: comece **privado** e só torne público depois de revisar o histórico
> ([seguranca.md](seguranca.md)).
