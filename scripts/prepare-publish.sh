#!/bin/bash
# Prepare for Chrome Web Store publishing
# Equivalent to: just prepare-publish

set -e

source "$(dirname "$0")/common.sh"

print_status "Preparing for Chrome Web Store..."
print_status "===================================="

# Clean and build production version
./scripts/clean.sh
print_status "🚀 Building for production..."
pnpm run build --mode production
print_success "Production build complete!"

# Create extension.zip
cd dist && zip -r ../extension.zip . -x "*.map" "*.DS_Store"
cd ..
print_success "Created extension.zip"

echo ""
echo "📋 Pre-publish checklist:"
echo "  [ ] Test the extension in Chrome"
echo "  [ ] Update version in manifest.json"
echo "  [ ] Update CHANGELOG.md"
echo "  [ ] Create screenshots (1280x800 or 640x400)"
echo "  [ ] Prepare promotional images"
echo "  [ ] Upload extension.zip to Chrome Web Store"
echo ""

print_status "Package: extension.zip ($(du -sh extension.zip | cut -f1))"
