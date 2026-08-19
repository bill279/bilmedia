#!/usr/bin/env bash
# Sync the site into dist/ and deploy to Netlify production.
# dist/ is the ONLY thing published — keep backups and experiments in the root.
set -euo pipefail
cd "$(dirname "$0")"

rm -rf dist
mkdir -p dist
cp index.html dist/index.html
cp -R assets dist/assets

echo "dist/ contents:"
find dist -type f | sort

netlify deploy --prod --dir dist
