#!/bin/bash
# Build for production
# Equivalent to: just build

set -e

source "$(dirname "$0")/common.sh"

print_status "Building extension..."
pnpm run build
print_success "Build complete! Load the 'dist' folder in chrome://extensions/"
