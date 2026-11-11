# gh-cheatsheet

Comandos de **GitHub pelo terminal** (`gh`, `git`, `gh api`) organizados por tarefa,
com os erros que encontrei pelo caminho e o caminho até **GitOps**.

> Placeholders: `OWNER` = dono do repo, `REPO` = nome do repo, `USUARIO` = outra pessoa.
> Nada aqui contém tokens ou dados pessoais — veja [Segurança](#segurança).

## Índice

| Arquivo | Assunto |
|---|---|
| [setup.md](setup.md) | Instalar e autenticar o `gh` |
| [repos.md](repos.md) | Criar, clonar, ver, mudar visibilidade, apagar |
| [branches.md](branches.md) | `master` → `main`, branches, push |
| [colaboradores.md](colaboradores.md) | Convidar e listar colaboradores |
| [prs-issues.md](prs-issues.md) | Pull requests e issues |
| [api.md](api.md) | `gh api` + `--jq`: acesso a qualquer coisa do GitHub |
| [actions.md](actions.md) | GitHub Actions pelo terminal |
| [erros.md](erros.md) | Erros comuns e como resolver |
| [seguranca.md](seguranca.md) | Não vazar segredos (e o que fazer se vazar) |
| [gitops.md](gitops.md) | Roteiro: do `gh` ao GitOps |
| [scripts/](scripts/) | Automação do que eu repito |

## Scripts

- [`scripts/new-repo.sh`](scripts/new-repo.sh) — cria repo, já na branch `main`, com commit inicial e colaborador opcional.

```bash
./scripts/new-repo.sh meu-projeto --collab USUARIO          # privado
./scripts/new-repo.sh meu-projeto --public                  # público
```

## Segurança

Regras deste repo: só placeholders, nunca saída de `gh auth status`, kubeconfig ou senhas.
Detalhes em [seguranca.md](seguranca.md).
