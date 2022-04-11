#!/bin/bash

# Supports Linux/macOS (and Windows via Git Bash or WSL)

SCRIPT_NAME="gc"

case "$OSTYPE" in
  msys*|cygwin*|win32)
    echo "Detected Windows environment (Git Bash / MSYS)"

    powershell.exe -Command "
    \$targetPath = \"\$env:USERPROFILE\\bin\"
    If (!(Test-Path \$targetPath)) { New-Item -ItemType Directory -Path \$targetPath | Out-Null }
    Copy-Item \"$SCRIPT_NAME\" \"\$targetPath\\$SCRIPT_NAME\" -Force
    \$oldPath = [Environment]::GetEnvironmentVariable('Path', 'User')
    If (-not \$oldPath.Split(';') -contains \$targetPath) {
        [Environment]::SetEnvironmentVariable('Path', \"\$oldPath;\$targetPath\", 'User')
        Write-Host 'PATH updated. Restart your terminal or computer to apply changes.'
    } else {
        Write-Host 'Already in PATH.'
    }
    "

    ;;

  linux*|darwin*)
    echo "Detected Linux/macOS"

    INSTALL_DIR="$HOME/.local/bin"

    mkdir -p "$INSTALL_DIR"
    cp "$SCRIPT_NAME" "$INSTALL_DIR/"
    chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

    # Detect shell config file
    if [ -n "$ZSH_VERSION" ]; then
      SHELL_RC="$HOME/.zshrc"
    else
      SHELL_RC="$HOME/.bashrc"
    fi

    # Add to PATH if not already there
    if ! grep -q "$INSTALL_DIR" "$SHELL_RC"; then
      echo -e "\n# Added by gc installer\nexport PATH=\"\$PATH:$INSTALL_DIR\"" >> "$SHELL_RC"
      echo "Updated $SHELL_RC — Restart your terminal to use 'gc'"
    else
      echo "$INSTALL_DIR is already in PATH in $SHELL_RC."
    fi
    ;;

  *)
    echo "Unsupported OS: $OSTYPE"
    exit 1
    ;;
esac
