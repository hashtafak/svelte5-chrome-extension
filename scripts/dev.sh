#!/bin/bash
# Start development server
# Equivalent to: just dev

set -e

source "$(dirname "$0")/common.sh"

print_status "Starting development server..."
pnpm run dev
