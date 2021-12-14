# Important git commands

## 1. Check git version

```git
git --version
```

## 2. Manage git config

```git
git config
```

## 3. Get details about command

```git
git help "command name"/ git "command name" --help /(UNIX) man git "command name"
```

## 4. Check status of files/directories

```git
git status
```

## 5. Clone a remote repos

```git
git clone "https://github.com/name"
```

## 6. Add track for some files

```git
git add "file/folder/*"
```

## 7. Remove track for some files

```git
git rm "file/folder/*"
```

## 8. Create a branch

```git
git branch "name" / git checkout -b "name"
```

## 9. Pin changes in the branch

```git
git commit -m "name"
```

## 10. Change the name and files of the last commit

```git
git commit --amend -m "new name"(optional)
```

## 11. Show commit logs

```git
git log
```

## 12. Connect to remote repos

```git
git remote add "local-name/(origin)" "https://github.com/reposName"
```

## 13. Push changes

```git
git push "name/(origin)" "branch/(master)"
```

## 14. Apply changes

```git
git pull "name/(origin)" dev  ==== git fetch + git merge
```

## 15. Change current branch

```git
git switch "branch-name"
```

## 16. Go to the last other branch

```git
git switch -
```

## 17. Show difference with same file in other branch

```git
git diff "other-branch" --"name.txt"
```

## 18. Show difference with same file in other branch

```git
git diff "other-branch" --"name.txt"
```

## 19. Copy all commits from other branch

```git
git fetch "branch-name"
```

## 20. Delete branch

```git
git branch -d "branch-name"
```

## 21. "F??? GO BACK..." (undo all commits)

```git
git reset --hard "branch-name(master)"
```

## 22. Apply all fetched commits (Do it after "git fetch")

```git
git merge
```
