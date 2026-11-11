# `gh api` — acesso a tudo

`gh api` chama a REST API do GitHub já autenticado. `--jq` filtra o JSON.
Docs dos endpoints: https://docs.github.com/rest

```bash
gh api user --jq .login                                   # quem sou eu
gh api repos/OWNER/REPO --jq '.visibility, .default_branch'
gh api repos/OWNER/REPO/contents/PASTA --jq '.[].name'    # listar arquivos
gh api repos/OWNER/REPO/commits --jq '.[0].commit.message'

# Métodos e campos
gh api -X PUT    repos/OWNER/REPO/collaborators/USUARIO -f permission=push
gh api -X DELETE repos/OWNER/REPO/collaborators/USUARIO

# Paginação (listas grandes)
gh api --paginate user/repos --jq '.[].full_name'
```

## `--jq` em 30 segundos

| Filtro | Faz |
|---|---|
| `.campo` | pega um campo |
| `.[]` | itera uma lista |
| `.[].name` | campo de cada item |
| `.[0]` | primeiro item |
| `map(select(.private))` | filtra |
| `length` | conta |
