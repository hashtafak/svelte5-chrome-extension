#!/bin/bash
# Show all available scripts and their purposes

set -e

echo "📋 Available Scripts"
echo "==================="
echo ""

echo "🏗️  Development & Building"
echo "   ./scripts/dev.sh           - Start development server"
echo "   ./scripts/build.sh         - Build for production"
echo "   ./scripts/build-check.sh   - Build with type checking"
echo "   ./scripts/clean.sh         - Clean build artifacts"
echo "   ./scripts/validate.sh      - Validate manifest.json"
echo ""

echo "📦 Packaging & Publishing"
echo "   ./scripts/prepare-publish.sh - Prepare for Chrome Web Store"
echo "   ./scripts/test.sh           - Quick test (rebuild + open Chrome)"
echo ""

echo "🔧 Maintenance"
echo "   ./scripts/install.sh        - Install dependencies"
echo "   ./scripts/update.sh         - Update dependencies"
echo "   ./scripts/status.sh         - Show project status"
echo ""

echo "📚 Documentation"
echo "   All scripts include help text and error handling"
echo "   Use './scripts/<script>.sh --help' for more info"
echo "   Scripts use pnpm for package management"
echo ""

echo "💡 Tips"
echo "   - Run scripts from project root: './scripts/build.sh'"
echo "   - Scripts are executable: 'chmod +x scripts/*.sh'"
echo "   - All scripts have colored output and error handling"
echo "   - For more commands, install just: 'cargo install just'"
echo ""

echo "📖 For complete command reference, use: just --list"
