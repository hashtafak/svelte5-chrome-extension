#!/bin/bash
# Clean build artifacts
# Equivalent to: just clean

set -e

source "$(dirname "$0")/common.sh"

print_status "Cleaning build artifacts..."
rm -rf dist
print_success "Cleaned dist folder"
