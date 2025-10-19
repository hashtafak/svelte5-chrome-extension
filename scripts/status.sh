#!/bin/bash
# Show project status
# Equivalent to: just status

set -e

source "$(dirname "$0")/common.sh"

echo "📊 Extension Status"
echo "===================="
echo "Node version: $(node --version)"
echo "pnpm version: $(pnpm --version)"
echo ""

echo "Package info:"
cat package.json | grep -E '"name"|"version"|"description"'
echo ""

echo "Build status:"
if [[ -d "dist" ]]; then
    echo "✅ dist/ exists (built)"
    echo "   Size: $(du -sh dist | cut -f1)"
    echo "   Files: $(find dist -type f | wc -l | tr -d ' ')"
else
    echo "❌ dist/ not found (not built)"
fi
