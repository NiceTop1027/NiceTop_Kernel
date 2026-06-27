#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
TOOL_DIR="$ROOT/kernel-cve-tool"
VENV="$TOOL_DIR/.venv"

if [[ ! -d "$VENV" ]]; then
  echo "가상환경이 없습니다. 먼저 아래를 실행하세요:"
  echo "  cd kernel-cve-tool && python3 -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt"
  exit 1
fi

exec "$VENV/bin/python" "$TOOL_DIR/main.py" "$@"