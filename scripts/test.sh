#!/bin/bash
# Quick test: rebuild and open Chrome
# Equivalent to: just test

set -e

source "$(dirname "$0")/common.sh"

print_status "Rebuilding extension..."
./scripts/clean.sh
./scripts/build.sh

print_status "Opening Chrome extensions page..."
open -a "Google Chrome" "chrome://extensions/"

print_success "Ready for testing!"
