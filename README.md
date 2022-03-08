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

> [!NOTE]
> It's really that simple — it covers everything you need to know about Git!

## Most Used Commands

These essential Git commands follow the typical flow of day-to-day development—from setting up a repository to sharing your work with others. Mastering them will cover the majority of real-world Git usage and significantly improve your efficiency.

### 1. `git init`  
Initializes a new Git repository in the current directory.
**Usage:**  
```bash
git init
```

### 2. `git clone`  
Copies an existing remote repository to your local machine.
**Usage:**  
```bash
git clone <repository-url>
```

### 3. `git status`  
Shows the current state of your workdir.
**Usage:**  
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
Shows the difference between changes in your working directory, staging area, or previous commits.  
**Usage:**  
```bash
git diff            # Compare working directory to staging  
git diff --staged   # Compare staging to last commit
```

### 6. `git commit`  
Creates a snapshot of the staged changes with a descriptive message. This forms the project's history.  
**Usage:**  
```bash
git commit -m "Your message here"
```

### 7. `git log`  
Displays the history of commits in the current branch.  
**Usage:**  
```bash
git log
```

### 8. `git branch`  
Lists, creates, or deletes local branches. Branching allows for isolated feature development.  
**Usage:**  
```bash
git branch              # List branches  
git branch <name>       # Create a new branch  
git branch -d <name>    # Delete a branch
```

### 9. `git checkout`  
Switches to another branch or restores file changes. Often used to start working on a feature or fix.  
**Usage:**  
```bash
git checkout <branch>       # Switch to a branch  
git checkout -b <name>      # Create and switch to a new branch  
git checkout -- <file>      # Discard local changes
```

### 10. `git merge`  
Merges selected branch(their files) into current(`git branch`).

```bash
git merge <branch>
```

### 11. `git pull`  
Fetches the latest changes from the remote and merges them into your local branch.

```bash
git pull
```

### 12. `git push`  
Sends your local commits to the remote repository.
```bash
git push origin <branch>
```

## Common Issues and Fixes
Mistakes happen—this section covers frequent problems (like accidental commits or branch confusion) and provides clear, effective solutions for each scenario.

## Essential Hotkeys
A quick setup guide and a curated list of powerful Git hotkeys that can significantly boost your speed and efficiency when using Git tools (like GitKraken, SourceTree, or even command-line wrappers).

## Tips and Tricks
Handy tricks to make you look like a seasoned Git expert—alias setups, stash magic, rebase powers, and much more.

## Trunk-Based Workflow (FSM Guide)
A simplified Finite State Machine diagram to help you follow trunk-based development practices. Learn what action to take based on the current state of your code or repo.

## Interview Questions
A categorized collection of real Git interview questions, sorted by experience level. Most are from actual interviews. Feel free to contribute anything I might've missed!