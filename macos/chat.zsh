#!/usr/bin/env zsh
set -euo pipefail

repo_root=$(git rev-parse --show-toplevel 2>/dev/null) || {
  echo "Not inside a git repository"
}

if [[ $(pwd) != "$repo_root" ]]; then
  echo "Moving into root folder of the repository"
  cd "$repo_root"
fi

COMPOSE_FILE="$repo_root/docker-compose.yml"

docker compose -f "$COMPOSE_FILE" exec openclaw-gateway node dist/index.js tui
