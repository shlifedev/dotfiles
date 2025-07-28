#!/bin/bash

set -e

echo "Installing basic system tools..."

if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    if [[ $(uname -m) == "arm64" ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
else
    echo "Homebrew already installed"
fi

echo "Updating Homebrew..."
brew update

echo "Installing basic tools..."
brew install --cask iterm2
brew install --cask stats
brew install --cask appcleaner
brew install --cask rectangle
brew install --cask keka

echo "Basic tools installation completed"
