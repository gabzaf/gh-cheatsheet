# Roteiro até GitOps

**GitOps** = o Git é a fonte da verdade; o que está no repo é o que roda.
Mudou o repo → o ambiente se ajusta sozinho.

1. **Git + `gh` no terminal** — criar repos, branches, PRs ([repos.md](repos.md), [prs-issues.md](prs-issues.md))
2. **Automação** — transformar repetição em script ([scripts/](scripts/))
3. **CI com GitHub Actions** — testar a cada push ([actions.md](actions.md))
4. **Infra como código** — manifests Kubernetes (Deployment, Service) versionados
5. **CD com Argo CD** — o cluster observa o repo e sincroniza sozinho:

```bash
kubectl -n argocd get applications           # apps gerenciadas
kubectl -n argocd get application APP -o jsonpath='{.status.sync.status}'
```

Fluxo GitOps de deploy:

```bash
# troca a versão da imagem, commit e push — o Argo CD faz o resto
sed -i 's/:v1/:v2/' manifests/deployment.yaml
git commit -am "deploy v2" && git push
kubectl -n NAMESPACE get pods -w            # observar a troca
```
