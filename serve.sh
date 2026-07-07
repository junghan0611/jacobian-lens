#!/usr/bin/env bash
# 담긴 소재의 오프라인 인터랙티브 캡슐을 로컬에서 띄운다.
#
#   ./serve.sh [소재이름] [포트]      # 기본: jspace 8877
#
# 캡슐/산출물은 저작권물이라 gitignore(papers/anthropic/) 대상이다. 없으면
# 먼저 PAPER-IMPORT.md 절차(paper2org-capsule 등)로 import 해야 한다.
# 이 스크립트는 변환을 하지 않는다 — 이미 만들어진 캡슐을 python http.server 로
# 서빙할 뿐이다(외부요청 0, 완전 오프라인).
set -euo pipefail

NAME="${1:-jspace}"
PORT="${2:-8877}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CAPSULE="$ROOT/papers/anthropic/$NAME/capsule"

if [ ! -d "$CAPSULE" ]; then
  echo "✗ 캡슐 없음: papers/anthropic/$NAME/capsule" >&2
  echo "  먼저 PAPER-IMPORT.md 절차로 '$NAME' 을 import 하세요 (paper2org-capsule)." >&2
  exit 1
fi

# 소재마다 캡슐 내부 경로(예: 2026/workspace/…)가 다르므로 자동 탐지한다.
DOC="$(cd "$CAPSULE" && find . -name '*.interactive.html' | head -n1 | sed 's|^\./||')"
if [ -z "$DOC" ]; then
  echo "✗ 캡슐 안에 *.interactive.html 이 없습니다: $CAPSULE" >&2
  exit 1
fi

echo "▶ 소재:  $NAME"
echo "▶ 서빙:  $CAPSULE"
echo "▶ 열기:  http://localhost:$PORT/$DOC"
echo "  (Ctrl-C 로 종료)"
cd "$CAPSULE"
exec python3 -m http.server "$PORT"
