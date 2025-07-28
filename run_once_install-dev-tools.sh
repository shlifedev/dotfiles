#!/bin/bash

set -e

echo "Installing development tools..."

if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Please run basic setup first."
    exit 1
fi

echo "Updating Homebrew..."
brew update

echo "Installing development tools and languages..."
brew install curl
brew install wget
brew install git
brew install tree
brew install mas

echo "Installing media tools..."
brew install ffmpeg
brew install --cask iina

echo "Installing programming languages and runtimes..."
brew install node
brew install python@3.12
brew install go
brew install openjdk
brew install rust
brew install php
brew install sqlite

echo "Installing package managers..."
brew install bun
brew install composer
brew install uv

echo "Installing development CLI tools..."
brew install gh

echo "Installing Docker..."
brew install --cask docker

echo "Installing development applications..."
brew install --cask visual-studio-code
brew install --cask jetbrains-toolbox
brew install --cask figma
brew install --cask postman

echo "Installing communication tools..."
brew install --cask slack
brew install --cask zoom

echo "Development tools installation completed"
