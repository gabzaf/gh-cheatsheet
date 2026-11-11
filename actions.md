# GitHub Actions pelo terminal

```bash
gh workflow list
gh workflow run NOME.yml               # dispara (precisa de on: workflow_dispatch)
gh run list --limit 5
gh run watch                           # acompanha o run em andamento
gh run view RUN_ID --log-failed        # só o log do que falhou
gh run rerun RUN_ID --failed

# Segredos do repo (o valor é pedido no prompt, não fica no histórico do shell)
gh secret set NOME
gh secret list
```

Workflow mínimo (`.github/workflows/ci.yml`):

```yaml
name: ci
on: [push, pull_request]
jobs:
  check:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - run: echo "testes aqui"
```
