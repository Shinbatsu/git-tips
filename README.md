# Useful Git Stuff

![Preview](./assets/preview.png)

A compact guide to mastering Git through essential commands, common pitfalls, time-saving shortcuts, expert tips, workflow patterns, and interview preparation.

1. Most used commands
2. Popular issues
3. Well known hotkeys
4. Some tips and tricks
5. Trunc based guide FSM
6. Commit Convention
7. Interview questions
8. Creating pull requests

> [!NOTE]
> It's really that simple — it covers everything you need to know about Git!

## Most Used Commands

These Git commands follow the typical development workflow—from starting a project to sharing changes. Learning them covers most daily Git usage and boosts your productivity. Ordered by typical workflow.

### 1. `git init`  
Initializes a new Git repo in the current directory.

```bash
git init
```

### 2. `git clone`  
Copies an existing remote repo to your local machine.

```bash
git clone <repo-url>
```

### 3. `git status`  
Shows the current state of your workdir.

```bash
git status
```

### 4. `git add`  
Stages changes, telling Git which files to include in the next commit.

```bash
git add <file>   # Add a specific file  
git add .        # Add all changes
git add -A       # Add all changes, including deletions
```

### 5. `git diff`  
Shows the difference files.

```bash
git diff            # Compare working directory to staging  
git diff --staged   # Compare staging to last commit
git diff <file>     # Compare files
```

### 6. `git commit`  
Creates a snapshot of the staged changes with a descriptive message. 

```bash
git commit -m "Commit Header" -m "Commit body"
```

### 7. `git log`  
Displays the history of commits in the current branch.  

```bash
git log
```

### 8. `git branch`  
Lists, creates, or deletes local branches. 

```bash
git branch -a           # List branches  
git branch <name>       # Create a new branch  
git branch -d <name>    # Delete a branch
```

### 9. `git checkout`  
Switches to another branch or restores file changes.

```bash
git checkout <branch>       # Switch to a branch(creates if not exists)
git checkout -b <name>      # Create and switch to a new branch  
git checkout -- <file>      # Discard local changes
```

### 10. `git merge`  
Merge selected branch(its files) into current(`git branch`).

```bash
git merge <branch>
```

### 11. `git pull`  
Fetches the latest changes from the remote and merges them into current branch.

```bash
git pull
```

### 12. `git push`  
Sends local branch changes to the remote repo.

```bash
git push origin <branch>
```

## Common Issues and Fixes
Mistakes happens, so this section covers common problems and best solutions for each case.

### 1. Wrong User Name or Email
**Issue:** Commits are showing the wrong author name/email.

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

If it's a local repo-specific setting:
```bash
git config user.name "Your Name"
git config user.email "you@example.com"
```

### 2. Forgot to Add some Files into Commit
**Issue:** Commit created, but some changes weren’t added.

```bash
git add . # add more changes
git commit --amend --no-edit
```

### 3. Committed to the Wrong Branch
**Issue:** You made changes on `main` instead of a feature branch.

```bash
git checkout -b feature-branch
# or if the branch already exists
# git checkout feature-branch
git cherry-pick <commit_hash>
```

### 4. Merge Conflicts
**Issue:** Conflicts when merging branches.

Git will highlight conflicts in the files. Manually edit them(Some IDEs may help a lot), then:

```bash
git add <resolved-files>
git commit
```

Use tools like `git mergetool` for assistance.

### 5. Accidentally Deleted a File
**Issue:** Deleted a file you didn’t mean to.

```bash
git checkout HEAD -- <file>
```

### 6. Overwritten Local Changes with Pull
**Issue:** You pulled changes and lost your uncommitted local changes.

If not staged:
```bash
git fsck --lost-found
```

For safety, stash changes before pulling:
```bash
git stash
```

### 7. Large File Accidentally Committed
**Issue:** Accidentally added a large file to Git history.

Use `BFG Repo-Cleaner` or `git filter-branch`.


### 8. Need to Undo Last Commit
**Issue:** Last commit has a mistake.

```bash
git reset --soft HEAD~1  # Keeps changes
```

To discard the commit and changes:
```bash
git reset --hard HEAD~1
```

### 9. Forgot to Switch Branch Before Work
**Issue:** You made changes on the wrong branch.

```bash
git stash
git checkout correct-branch
git stash pop
```


## Essential Hotkeys
A quick setup guide and a curated list of powerful Git hotkeys that can significantly boost your speed and efficiency when using Git tools (like GitKraken, SourceTree, or even command-line wrappers).

## Tips and Tricks
Handy tricks to make you look like a seasoned Git expert—alias setups, stash magic, rebase powers, and much more.

## Trunk-Based Workflow (FSM Guide)
A simplified Finite State Machine diagram to help you follow trunk-based development practices. Learn what action to take based on the current state of your code or repo.

## Interview Questions
A categorized collection of real Git interview questions, sorted by experience level. Most are from actual interviews. Feel free to contribute anything I might've missed!