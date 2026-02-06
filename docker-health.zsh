#!/usr/bin/env zsh
set -euo pipefail

# Resolve script directory (zsh-native)
ROOT_DIR="${0:A:h}"
COMPOSE_FILE="$ROOT_DIR/docker-compose.yml"

echo
echo "==> Checking Health"

docker compose -f "$COMPOSE_FILE" exec openclaw-gateway node dist/index.js health
