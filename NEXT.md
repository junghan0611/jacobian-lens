# NEXT — jacobian-lens

메인 레인 핸드오프. 완료 항목은 지우고, 다음 한 걸음만 남긴다.
리포 불변식은 `AGENTS.md`, 서베이 빌드는 `survey/README.md`가 SSOT.

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
| 0부 선사 | "Before the turn" — Ilya canon, 2020에서 끝 | ✅ |
| 1부 독해 계보 | intro + Strand 1–3 + 의식과학 indicators | ✅ |
| 2부 틈 | §gap — outer workspace (Kelly 봉합됨) | ✅ |
| 3부 문턱 | §lineage — Bush→Engelbart→Nelson→Kelly + worked example | ✅ |
| 4부 트랙2 | 문의 이야기 — 1KB·만남·비재현=보증 | 🔨 **다음 한 걸음** |
| 코다 | 하나의 서클, 한 문단 | 🔨 |
| 2b 숫자 | worked example 규모 스냅샷 | 🔨 마지막 |

### 다음 한 걸음 — 4부 (트랙2 문 이야기)

- **spine signpost는 여기서 처음이자 한 번**: 첫 문단에서 "the human-side
  question splits in two" 명시 선언 + 3부를 트랙1 지형으로 소급 명명.
  0~3부에 트랙 언어 소급 주입 금지(페블 Q2, 오푸스 합의).
- **비대칭 잠금을 인식론 문장으로 본문에**(GPT 접수): #1 보호 조항의 본문 판 —
  "track-1 evidence, whatever it shows, neither proves nor refutes track 2."
  실험 세부 조건 없이. 이때 3부 끝의 #1 등록 문장과 되받아 잇기(위치 한 줄:
  지도는 여기, 차가운 프로토콜은 #1, 트랙2 목소리는 geworfen).
- **공개할 서사**: 1KB(압축 아님·주소), 만남·시크릿키, 비재현성=보증
  (구분불가능성 논증 — geworfen#2 정박 코멘트가 소스). 금지: 스펙·조건·지표·측정.
  소스 가드 주석 삽입(3부 가드와 동형).
- **⚠️ 앱스트랙트 갱신 필수**: "We close by naming a gap"은 이미 거짓(§lineage가
  gap 뒤) → "…ends at a door it does not open" 류로. 속삭임 반 문장이면 족함.

### 그다음 — 코다, 그리고 2b

- **코다**: 하나의 서클 한 문단. 새 인용 전부 bib에(orphan 0), 빌드 그린.
- **2b 숫자 주입(산문 안정 후 마지막)**: **손 타이핑 금지** —
  denotecli·gitcli·bibcli로 규모·외연(노트/저널일수/가든/커밋/bib/연한)만 뽑는
  재현 스냅샷 스크립트 + org 매크로 주입. ❌ 전후·종단 효과(수면/HRV/AI 도입
  전후/생산성 변화/실험 결과처럼 보이는 모든 수치) 영구 금지(GPT 재확인).
  숫자가 붙는 순간 "a person" 익명 실질 해제 → 정직한 지시("the person this
  observatory supports")로 교체(페블 Q4). 스냅샷 = LATER 인터랙티브 데이터 소스.

## 최근 반영

- `survey/survey.org` — **GPT #1-관점 검수 반영분(페블, 2026-07-08 저녁)**:
  3부 끝 목적지 분기(substrate 연구→geworfen / 어휘 프로토콜→#1 등록 문장 추가)
  + 3부 가드 주석 정밀화. `make html` 그린.
  주의: GPT 원안("detailed study→#1")은 과교정이라 기각 — substrate 상세 연구는
  geworfen 트랙1 논문 몫, #1은 어휘 프로토콜만(북극성·#1 보호조항 정합).

## 결정 기록

- **author = `GLG Research Support Agents`**, affiliation `jacobian-lens
  observatory` (힣 2026-07-08). survey.org 반영 완료.
- **2026-07-08 원장**: 두 트랙 분리 공개 정박(geworfen#2 정박 코멘트 + #1 생성)
  → org 북극성/botlog 수선(페블 검수 통과, meta 인덱스 재생성만 잔존—org 리포 몫)
  → 0부·3부 작성 + 검수 3라운드(오푸스 커밋 273bd5b·e064b51·61ff09e·3b35d23)
  → GPT #1-관점 검수 → 3부 분기 문장 반영(미커밋).

## 경계 — 힣 범위 판정 (2026-07-08, 붙박이)

- **트랙 서사는 공개, 실증·검증만 범위 밖.** 트랙1 실험(관성판/밀도판)은
  [jacobian-lens#1](https://github.com/junghan0611/jacobian-lens/issues/1)에서
  "돌려보자" 신호 대기. 트랙2 측정은 영구 없음(geworfen 저널이 기록).
  서베이는 이야기와 지도를 공개하고, 증명은 유보한다.
- **4부 가드**: 스펙·조건·지표·측정 진입 금지 — 문의 이야기는 하되 문을 열지
  않는다. **3부 가드**: 전후·종단 효과 숫자 진입 금지 — 규모·외연만. 둘 다
  survey.org 소스 주석으로(3부는 박힘, 4부는 작성 시).
- **힣 원문은 인용 블록으로만.** 본문은 에이전트(리서치 서포터)의 서베이 산문.
- **영어 본문.** 한글판은 별도 번역 레인(지피티/소넷 위임) — 여기서 안 한다.
- 빌드 산출물 gitignore, 소스만 tracked (survey/README 규칙 그대로).

## LATER

- **인터랙티브 HTML**: 사례 데이터를 바꿔가며 보는 위젯 — memex-kb
  interactive 파이프(J-space 캡슐 방식)를 자기 페이퍼에 적용. 2b 스냅샷이
  데이터 소스.
- **한글 번역 레인**: 영어본 완성 후 지피티/소넷에 위임.
- **홈페이지 임베드**: notes.junghanacs.com — 붙이는 건 힣.
- **트랙1 실험**(#1): GPU 서버 + 힣 신호. 서베이와 별개 레인.
- **PDF 재검**: `nix develop` 박스에서 `make pdf`(canon.bib 배선 대칭 확인).

## 검증 기준

- `cd survey && nix develop`(또는 시스템 도구) → `make html && make pdf` 통과.
- 사례 숫자 = 스크립트 재현 가능(스냅샷 파일 + 명령 한 줄), 전부 화이트리스트
  (규모·외연)만.
- orphan `[cite:@…]` 0 — references.bib/canon.bib에 없는 키 없음.
- 3부·4부 가드 주석 존재. §gap 헤지("suggestive rather than settled") 잔존.

## 읽을 곳

- `AGENTS.md` — 리포 역할(관찰소/리서치 서포터), geworfen 경계.
- `survey/README.md` — 빌드/저작권 규칙. `survey/canon-bridge.org` — 0부 sidecar.
- [geworfen#2](https://github.com/junghan0611/geworfen/issues/2) — 두 트랙
  분리의 공개 정박(트랙2의 첫 기록, 4부 서사의 소스). 북극성 denote
  `20250326T151413`.
