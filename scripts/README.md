#!/bin/bash
# Chrome Extension Development Scripts
# These scripts mirror the justfile recipes for people who don't have just installed

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Helper function for colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

# Check if we're in the right directory
if [[ ! -f "package.json" ]] || [[ ! -f "justfile" ]]; then
    print_error "Please run this script from the project root directory"
    exit 1
fi

# Show help if no arguments
if [[ $# -eq 0 ]]; then
    echo "Chrome Extension Development Scripts"
    echo "Usage: ./scripts/<script-name>"
    echo ""
    echo "Available scripts:"
    echo "  install.sh      - Install dependencies"
    echo "  dev.sh          - Start development server"
    echo "  build.sh        - Build for production"
    echo "  build-check.sh  - Build with type checking"
    echo "  clean.sh        - Clean build artifacts"
    echo "  status.sh       - Show project status"
    echo "  test.sh         - Quick test (rebuild and open Chrome)"
    echo "  prepare-publish.sh - Prepare for Chrome Web Store"
    echo "  package.sh      - Create production package"
    echo ""
    echo "For more commands, install just and use 'just --list'"
    exit 0
fi
