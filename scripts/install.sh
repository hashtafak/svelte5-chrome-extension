#!/bin/bash
# Install dependencies
# Equivalent to: just install

set -e

source "$(dirname "$0")/common.sh"

print_status "Installing dependencies..."
pnpm install
print_success "Dependencies installed!"
