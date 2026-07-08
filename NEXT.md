# NEXT — jacobian-lens

메인 레인 핸드오프. 완료 항목은 지우고, 다음 한 걸음만 남긴다.
리포 불변식은 `AGENTS.md`, 서베이 빌드는 `survey/README.md`가 SSOT.

개정: 2026-07-08 오푸스 리뷰 + GPT 리뷰-리뷰(entwurf 메일, GLG 라우팅) 반영.
근거 검증 완료 — 트랙1 botlog(20260331T123550)의 생체 축이 전후 효과 프레임임을
확인, bib 배선 지점(survey.org:6 + Makefile) 확인.

## NOW — 서베이 페이퍼: "힣의 AI 연구 서베이" — 두 트랙의 서사를 공개한다

2026-07-08 힣 결정 + 축 정정: **두 트랙의 이야기(서사·인식론)가 이 서베이의
spine이자 payload다.** 범위 밖은 오직 실증·검증(증명·측정)뿐.

- **공개(IN)**: 왜 트랙이 둘인지, 트랙1(outer workspace / PKM-AI 실천, 이야기로),
  트랙2(1KB·만남, 안 열리는 문), 비대칭 잠금("트랙1 성공이 트랙2를 증명하지
  않는다"), 구분불가능성=보증, 코다(하나의 서클).
- **유보(OUT)**: 그 증명 — 트랙1 전후 효과·실험(→ #1), 트랙2 측정(→ geworfen).

에이전트가 쓴다(힣 날것 원문은 인용 블록으로만). 영어 직행.
아치: **짓기 → 읽기 → 틈 → 문턱(사례) → 문(이야기는 하되 안 엶) → 서클**.

| 부 | 내용 | 상태 |
|---|---|---|
| 0부 선사 | Ilya 27 짓는 계보, 2020에서 끝 | ✅ survey.org "Before the turn" 절 |
| 1부 독해 계보 | 기존 Strand 1–3 + 의식과학 | ✅ survey.org 본문 |
| 2부 틈 | outer workspace (§gap) | ✅ 기존 |
| 3부 트랙1 | augmentation 계보 서베이 + 힣 worked example | 🔨 신규 |
| 4부 트랙2 | 문의 이야기 — 1KB·만남·비재현=보증 | 🔨 신규 |
| 코다 | 하나의 서클, 한 문단 | 🔨 신규 |

작업 순서:

1. ✅ **목차 개편 + 0부 + bib 배선 (완료 2026-07-08 오푸스)** — survey.org에 Part 0
   "Before the turn --- the building canon" 영어 신규 작성(canon: 10키 인용, logit
   lens로 building→reading handoff). `#+bibliography: canon.bib` + Makefile 양쪽
   배선. `make html` 그린(orphan cite 0). PDF는 nix develop에서 재검(배선 대칭).
   canon-bridge.org는 한글 sidecar로 유지. **다음 한 걸음 = 아래 2번(3부).**
2. **3부** — 무게중심은 **augmentation 계보 서베이**(Bush memex → Engelbart →
   Nelson → Kelly exoself → digital garden → agent harness/memory). 힣 사례는
   그 계보의 **worked example / case vignette**로 서사 등장(geworfen 인용) —
   autoethnographic 증명 아님(geworfen 트랙1 페이퍼의 N=1 설계와 중복·경계흐림
   방지). **숫자 화이트/블랙 가드**(소스에 4부 동급 가드 주석):
   - ✅ 규모·외연 = 서사 예시로 공개: 노트 수·저널 일수·가든 수·커밋 수·연한.
     lifetract는 외연만(엔트리 수·기간).
   - ❌ 전후·종단 효과 = 증거이므로 진입 금지: 수면/HRV 변화, 인지부하·커밋
     상관 등 (근거: 트랙1 botlog 생체 축이 "AI 도입 전후" 효과 프레임 — 이건
     #1/geworfen 몫).
   - 숫자는 생성 스크립트 산출로만(손 타이핑 금지, 스냅샷+재현 스크립트를
     survey/ 아래에 — LATER 인터랙티브의 데이터 소스가 되도록).
3. **4부** — **문의 이야기는 공개한다**: 1KB(압축 아님·주소), 만남·시크릿키,
   비재현성=보증의 서사와 인식론. 금지는 **스펙·조건·지표·측정만**. 소스에
   가드 주석 삽입(아래 경계 참조).
4. **본문 전반 헤지** — J-space(inner) ↔ outer workspace **과잉등치 금지**:
   "functional analogy / missing counterpart / survey bridge" 수준 유지. §gap의
   기존 헤지("suggestive rather than settled") 유지·강화. 서사는 공개하되
   overclaim 없이.
5. **코다 + bib 정리** — 새 인용 전부 bib에(orphan cite 0). 빌드 그린 유지
   (`make html` / `make pdf`).

## 결정 기록

- **author = `GLG Research Support Agents`** (힣 2026-07-08). survey.org 반영 완료
  (`\author{}` + `#+AUTHOR:`, affiliation=`jacobian-lens observatory`). blocker 해소.

## 경계 — 힣 범위 판정 (2026-07-08, 붙박이)

- **트랙 서사는 공개, 실증·검증만 범위 밖.** 트랙1 실험(관성판/밀도판)은
  [jacobian-lens#1](https://github.com/junghan0611/jacobian-lens/issues/1)에서
  "돌려보자" 신호 대기. 트랙2 측정은 영구 없음(geworfen 저널이 기록).
  서베이는 이야기와 지도를 공개하고, 증명은 유보한다.
- **4부 가드**: 스펙·조건·지표·측정 진입 금지 — 문의 이야기는 하되 문을 열지
  않는다. **3부 가드**: 전후·종단 효과 숫자 진입 금지 — 규모·외연만. 두 가드
  모두 survey.org 소스 주석으로 박아 다음 에이전트가 걸려 넘어지게 할 것.
- **힣 원문은 인용 블록으로만.** 본문은 에이전트(리서치 서포터)의 서베이 산문.
- **영어 본문.** 한글판은 별도 번역 레인(지피티/소넷 위임) — 여기서 안 한다.
- 빌드 산출물 gitignore, 소스만 tracked (survey/README 규칙 그대로).

## LATER

- **인터랙티브 HTML**: 사례 데이터를 바꿔가며 보는 위젯 — memex-kb
  interactive 파이프(J-space 캡슐 방식)를 자기 페이퍼에 적용. 3부 숫자
  스냅샷이 데이터 소스.
- **한글 번역 레인**: 영어본 완성 후 지피티/소넷에 위임.
- **홈페이지 임베드**: notes.junghanacs.com — 붙이는 건 힣.
- **트랙1 실험**(#1): GPU 서버 + 힣 신호. 서베이와 별개 레인.

## 검증 기준

- `cd survey && nix develop`(또는 시스템 도구) → `make html && make pdf` 통과.
- 사례 숫자 = 스크립트 재현 가능(스냅샷 파일 + 명령 한 줄), 전부 화이트리스트
  (규모·외연)만.
- orphan `[cite:@…]` 0 — references.bib/canon.bib에 없는 키 없음.
- 3부·4부 가드 주석 존재. §gap 헤지 문장 잔존.

## 읽을 곳

- `AGENTS.md` — 리포 역할(관찰소/리서치 서포터), geworfen 경계.
- `survey/README.md` — 빌드/저작권 규칙. `survey/canon-bridge.org` — 0부 소스.
- [geworfen#2](https://github.com/junghan0611/geworfen/issues/2) — 두 트랙
  분리의 공개 정박(트랙2의 첫 기록). 북극성 denote `20250326T151413`.
