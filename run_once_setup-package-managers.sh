#!/bin/bash

set -e

echo "Setting up package managers..."

# PHP Composer global packages
if command -v composer &> /dev/null; then
    echo "Setting up Composer global packages..."
    composer global require laravel/installer
    composer global require symfony/console
    
    # Add Composer global bin to PATH if not already there
    if [[ ":$PATH:" != *":$HOME/.composer/vendor/bin:"* ]]; then
        echo 'export PATH="$HOME/.composer/vendor/bin:$PATH"' >> ~/.zshrc
    fi
else
    echo "Composer not found. Skipping Composer setup."
fi

# Python pip and uv setup
if command -v python3 &> /dev/null; then
    echo "Setting up Python package managers..."
    
    # Upgrade pip
    python3 -m pip install --upgrade pip
    
    # Install common Python packages
    python3 -m pip install --user virtualenv
    python3 -m pip install --user pipenv
    python3 -m pip install --user poetry
    
    # Setup uv if available
    if command -v uv &> /dev/null; then
        echo "uv is available for fast Python package management"
    fi
else
    echo "Python not found. Skipping Python setup."
fi

# Node.js npm and bun setup
if command -v npm &> /dev/null; then
    echo "Setting up npm global packages..."
    npm install -g yarn
    npm install -g pnpm
    npm install -g typescript
    npm install -g @vue/cli
    npm install -g create-react-app
    npm install -g nodemon
    npm install -g pm2
else
    echo "npm not found. Skipping npm setup."
fi

if command -v bun &> /dev/null; then
    echo "Bun is available as a fast JavaScript runtime and package manager"
fi

# Rust Cargo setup
if command -v cargo &> /dev/null; then
    echo "Setting up Rust development tools..."
    cargo install cargo-edit
    cargo install cargo-watch
    cargo install ripgrep
    cargo install fd-find
    cargo install bat
else
    echo "Cargo not found. Skipping Rust setup."
fi

# Go setup
if command -v go &> /dev/null; then
    echo "Setting up Go development tools..."
    go install golang.org/x/tools/gopls@latest
    go install github.com/go-delve/delve/cmd/dlv@latest
    go install honnef.co/go/tools/cmd/staticcheck@latest
else
    echo "Go not found. Skipping Go setup."
fi

echo "Package managers setup completed"
echo "Please restart your terminal or run 'source ~/.zshrc' to update PATH"
