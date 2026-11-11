# Pull requests e issues

## PRs

```bash
gh pr create --fill                    # título/corpo a partir dos commits
gh pr create --title "x" --body "y" --base main
gh pr list
gh pr status                           # PRs que envolvem você
gh pr view 12 --web
gh pr checkout 12                      # baixa a branch do PR
gh pr diff 12
gh pr review 12 --approve
gh pr merge 12 --squash --delete-branch
```

## Issues

```bash
gh issue create --title "bug: x" --body "passos..."
gh issue list --state open
gh issue view 7
gh issue close 7 --comment "resolvido em #12"
```
