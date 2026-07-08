# survey — 프런티어 랩 연구 지형 서베이 (양식 테스트 겸)

`jacobian-lens`(외부연구 관찰소)의 **리서치 서포터 산출물**이다. 앤트로픽·OpenAI 등
프런티어 랩이 모델 내부·자아·정렬을 어떻게 파는지 자기완결 서베이로 정리하고,
동시에 **org SSOT → PDF/HTML 파이프**의 첫 실전 양식 테스트 역할을 한다.

> 역할 경계: 서베이(남의 연구 정리)는 여기서, 힣의 목소리(내 데이터로 내 말)는
> `geworfen`에서. 이 문서는 `geworfen` 본체 논문의 "바깥쪽 workspace" 각도로 이어진다.

## 무엇이 들어있나

| 파일 | 역할 |
|---|---|
| `survey.org` | **SSOT 정본**. acmart 헤더 + 0부(building canon) + 독해 3-strand + gap + 인용(`[cite:@key]`) |
| `references.bib` | 독해 계보 인용 서지 27개 (산업계 landmark + 의식이론 배경). `papers/anthropic/jspace/bibliography.bib`에서 추출 + J-space 엔트리 |
| `canon.bib` | 0부 건축 canon 서지 27개 (Ilya→Carmack 리스트). `canon:` 네임스페이스, references.bib와 분리 |
| `canon-bridge.org` | 0부 소스 지형메모(한글 sidecar). survey.org Part 0 영어 산문의 출처 |
| `build.el` | org → acmart PDF. **memex-kb `paper_build.el` 벤더링 사본**(B-with-A-provenance) |
| `Makefile` | `make pdf` / `make html` / `make all` |
| `flake.nix` | 재현 devshell (texlive-full + emacs + pandoc) |

## 목차 (초안 골격)

0. Before the turn — the building canon (Ilya 27편 → logit lens handoff)
1. Why the industrial turn — 학계 의식이론 → 산업계 실측
2. Strand 1 — Reading the interior (logit lens → SAE → circuit tracing → J-space)
3. Strand 2 — Selfhood, introspection, emotion (self는 post-training이 설치)
4. Strand 3 — Installing values (deliberative alignment · counterfactual reflection)
5. Indicators from consciousness science (Butlin의 지표 틀)
6. The gap — the outer workspace ← **이 서베이의 thesis / geworfen으로의 다리**

## 오라클 서버에서 이어가기

```bash
git clone <repo> && cd jacobian-lens/survey   # 또는 git pull
nix develop        # texlive-full + emacs + pandoc
make html          # → survey.html (빠름, KaTeX 수식)
make pdf           # → survey.pdf  (acmart, texlive 필요)
make all           # 둘 다
```

`nix` 없이 시스템 도구로도 됨(pandoc + emacs + texlive가 PATH에 있으면 `make`만).
HTML만 빠르게 볼 땐 `make html` — texlive 없이 pandoc만으로 난다.

## 남은 일 (퇴근길/오라클에서)

1. ✅ `author` = `GLG Research Support Agents` (힣 2026-07-08 결정). 반영 완료.
2. 각 Strand 섹션에 살 붙이기(현재는 지형 골격 + 핵심 인용만). 필요하면
   해당 논문 원문을 `papers/anthropic/`로 추가 import(→ 리포 루트 `PAPER-IMPORT.md`).
3. 6절 "outer workspace" thesis를 `geworfen` 본체와 연결 — related-work 다리로.
4. figure가 필요하면 데이터→코드로 재현생성(앤트로픽 캡슐 방식은 여기선 불필요).

## 산출물/저작권

- `*.pdf` `*.html` `*.tex` 등 빌드 산출물은 gitignore. **소스만 tracked**, 재현은 `make`.
- 서베이 텍스트는 이 리포의 리서치 정리물이고, 인용 원문 저작권은 각 저자(대부분
  Anthropic)에게 있다. 원문 아카이브가 필요하면 `papers/anthropic/`(gitignore)로.
