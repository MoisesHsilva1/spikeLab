#!/usr/bin/env bash
set -euo pipefail

if ! command -v hugo >/dev/null 2>&1; then
  echo "Hugo não encontrado. Instale-o primeiro: https://gohugo.io/installation/"
  exit 1
fi

echo "Atualizando submodulos..."
git submodule update --init --recursive >/dev/null 2>&1 || true

echo "Gerando o site..."
hugo

echo
if [[ "${1:-}" == "serve" ]]; then
  echo "Abrindo o site localmente em http://localhost:1313"
  hugo server -D --bind 0.0.0.0 --port 1313
else
  echo "Pronto! Para ver localmente, rode:"
  echo "  ./install.sh serve"
fi
