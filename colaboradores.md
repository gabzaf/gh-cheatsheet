# Colaboradores

```bash
# Convidar (permission: pull | triage | push | maintain | admin)
gh api -X PUT repos/OWNER/REPO/collaborators/USUARIO -f permission=push

# Convites pendentes
gh api repos/OWNER/REPO/invitations --jq '.[].invitee.login'

# Quem já é colaborador
gh api repos/OWNER/REPO/collaborators --jq '.[].login'

# Remover
gh api -X DELETE repos/OWNER/REPO/collaborators/USUARIO
```

A pessoa precisa **aceitar** o convite (e-mail ou https://github.com/notifications).
Repo público não precisa de colaborador para ser *lido* — só para *push*.
