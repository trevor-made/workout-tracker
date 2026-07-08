#!/bin/bash
# Rebuild the passphrase-gated docs/index.html from the editable index.html source.
# Usage: STATICRYPT_PASSWORD=... ./.staticrypt-build.sh
set -e
cd "$(dirname "$0")"
PASSWORD="${STATICRYPT_PASSWORD:?Set STATICRYPT_PASSWORD env var}"
npx --yes staticrypt index.html -p "$PASSWORD" -d docs --short --remember 30 \
  --template-title "Workout Tracker" --template-instructions "Trevor + Blake only"
