#!/usr/bin/env bash

set -euo pipefail

echo "Moxer Icons Clean Installation Script"
echo "====================================================================="

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "Error: Node.js is not installed. Please install Node.js 18+ first."
    exit 1
fi

echo "Node.js version: $(node --version)"

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "Error: npm is not installed. Please install npm first."
    exit 1
fi

echo "npm version: $(npm --version)"

# Step 1: Install dependencies
echo ""
echo "Step 1: No dependencies."

# Step 2: Package as VSIX
echo ""
echo "Step 2: Packaging extension as VSIX..."
npx @vscode/vsce package

# Find the generated VSIX file
VSIX_FILE="$(ls moxer-icons-clean-*.vsix 2>/dev/null | head -1)"
if [ -z "$VSIX_FILE" ]; then
    echo "Error: VSIX package not found"
    exit 1
fi

# Step 3: Install in VS Code
echo ""
echo "Step 3: Installing extension in VS Code..."
if command -v code &> /dev/null; then
    code --install-extension "$VSIX_FILE"
    echo ""
    echo "Installation complete!"
    echo "Please reload VS Code to activate the extension:"
    echo "- Open Command Palette (Cmd+Shift+P / Ctrl+Shift+P)"
    echo "- Run 'Developer: Reload Window'"
    echo "- Then select: Preferences > File Icon Theme > Moxer Icons Clean"
else
    echo "Warning: VS Code CLI 'code' command not found."
    echo "Please install the extension manually:"
    echo "1. Open VS Code"
    echo "2. Go to Extensions (Cmd+Shift+X / Ctrl+Shift+X)"
    echo "3. Click 'Install from VSIX...'"
    echo "4. Select: $VSIX_FILE"
    echo "5. Reload VS Code when prompted"
fi

echo ""
echo "Installation script complete!"
