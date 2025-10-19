#!/bin/bash
# Build with type checking
# Equivalent to: just build-check

set -e

source "$(dirname "$0")/common.sh"

print_status "Running type check..."
pnpm run check

print_status "Building extension..."
pnpm run build

print_success "Build complete with type checking!"
