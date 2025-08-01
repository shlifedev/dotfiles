#!/bin/bash

set -e

echo "Validating installation..."

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

echo "Checking command line tools..."
echo "Checking Xcode Command Line Tools..."
if xcode-select -p &> /dev/null; then
    echo "✅ Xcode Command Line Tools are installed"
else
    echo "❌ Xcode Command Line Tools are NOT installed"
fi

echo ""
check_command "brew"
check_command "git"
check_command "git-lfs"
check_command "gpg"
check_command "pkg-config"
check_command "vim"
check_command "bash"
check_command "zsh"
check_command "grep"
check_command "node"
check_command "npm"
check_command "yarn"
check_command "python3"
check_command "uv"
check_command "go"
check_command "cargo"
check_command "php"
check_command "composer"
check_command "dotnet"
check_command "gh"
check_command "aws"
check_command "claude-code"
check_command "gemini-cli"

echo ""
echo "Checking applications..."
check_app "iTerm"
check_app "Visual Studio Code"
check_app "Docker"
check_app "Claude"
check_app "Slack"
check_app "IINA"

echo ""
echo "Checking Oh My Zsh installation..."
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "✅ Oh My Zsh is installed"
else
    echo "❌ Oh My Zsh is NOT installed"
fi

echo ""
echo "Checking Zsh plugins..."
if [ -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    echo "✅ zsh-autosuggestions plugin is installed"
else
    echo "❌ zsh-autosuggestions plugin is NOT installed"
fi

if [ -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    echo "✅ zsh-syntax-highlighting plugin is installed"
else
    echo "❌ zsh-syntax-highlighting plugin is NOT installed"
fi

echo "If any items are missing, run 'chezmoi apply' to reinstall."
