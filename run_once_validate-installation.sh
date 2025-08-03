#!/bin/bash

set -e

echo "Validating installation..."

# Function to check if application exists
check_app() {
    if [ -d "/Applications/$1.app" ]; then
        echo "✅ $1 is installed"
        return 0
    else
        echo "❌ $1 is NOT installed"
        return 1
    fi
}

# Function to check if command exists
check_command() {
    if command -v "$1" &> /dev/null; then
        echo "✅ $1 is installed"
        return 0
    else
        echo "❌ $1 is NOT installed"
        return 1
    fi
}

echo "Checking command line tools..."
echo "Checking Xcode Command Line Tools..."
if xcode-select -p &> /dev/null; then
    echo "✅ Xcode Command Line Tools are installed"
else
    echo "❌ Xcode Command Line Tools are NOT installed"
fi

echo ""
echo "Checking CLI tools (from Brewfile)..."
check_command "aws"
check_command "bash"
check_command "brew"
check_command "claude-squad"
check_command "composer"
check_command "curl"
check_command "dotnet"
check_command "gemini" # gemini-cli
check_command "gh"
check_command "git"
check_command "git-lfs"
check_command "go"
check_command "gpg"
check_command "grep"
check_command "kotlin"
check_command "node"
check_command "npm"
check_command "php"
check_command "pkg-config"
check_command "python3"
check_command "cargo"
check_command "sqlite3"
check_command "tmux"
check_command "tree"
check_command "uv"
check_command "vim"
check_command "wget"
check_command "yarn"
check_command "zsh"

echo ""
echo "Checking applications (from Brewfile casks)..."
check_app "AppCleaner"
check_app "Claude"
check_app "Docker"
check_app "Figma"
check_app "Google Chrome"
check_app "IINA"
check_app "iTerm"
check_app "JetBrains Toolbox"
check_app "Keka"
check_app "Postman"
check_app "Rectangle"
check_app "Slack"
check_app "Stats"
check_app "Visual Studio Code"
check_app "zoom.us"

echo ""
echo "Validation completed!"
