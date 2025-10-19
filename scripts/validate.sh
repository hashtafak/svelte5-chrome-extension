#!/bin/bash
# Validate manifest.json
# Equivalent to: just validate

set -e

source "$(dirname "$0")/common.sh"

print_status "Validating manifest.json..."
if node -e "try { JSON.parse(require('fs').readFileSync('manifest.json', 'utf8')); console.log('✅ manifest.json is valid'); } catch(e) { console.log('❌ Invalid JSON:', e.message); process.exit(1); }"; then
    print_success "Manifest validation passed!"
else
    print_error "Manifest validation failed!"
    exit 1
fi
