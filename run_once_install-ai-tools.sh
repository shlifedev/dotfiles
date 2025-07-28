#!/bin/bash

set -e

echo "Installing AI tools..."

if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Please run basic setup first."
    exit 1
fi

echo "Installing AI applications..."
brew install --cask claude

echo "Installing AI CLI tools..."
# Check if npm is available for Claude Code
if command -v npm &> /dev/null; then
    echo "Installing Claude Code (VS Code extension)..."
    npm install -g @anthropic-ai/claude-code
else
    echo "npm not found. Skipping Claude Code installation."
    echo "Run this script again after installing Node.js."
fi

# Install Gemini CLI if available
if brew search gemini-cli &> /dev/null; then
    echo "Installing Gemini CLI..."
    brew install gemini-cli
else
    echo "Gemini CLI not available in Homebrew. Skipping."
fi

echo "AI tools installation completed"
echo "Note: Some AI tools may require additional setup or API keys."
