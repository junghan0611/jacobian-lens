# AGENTS

이 리포는 힣의 **앤트로픽 메타 관찰 담당 공간**이다. `jacobian-lens`(jlens)는 그
첫 소재고 리포 이름도 거기서 왔지만, 목적은 이 한 논문의 재현이 아니다.

## 이 리포가 하는 일

힣은 AI 연구자가 아니라 사용자다. 앤트로픽(그리고 케빈 켈리처럼 인접한 사상가)이
공개하는 논문·글·영상을 **문서 변환기로 org SSOT 정본으로 끌어와** 여기 여럿
쌓아두고, 담당자(=너, 에이전트)와 함께 읽고 논의한다. 한마디로 메타 연구 / 큐레이션
공간이다.

- **목적은 메타 관찰이다.** "앤트로픽 요즘 뭐 하나"를 코드와 논문으로 함께 보는 것.
  AI 연구를 재현하거나 논문을 한 줄씩 검증하는 게 아니다.
- **정본은 org다.** 영어 원문을 그대로 읽는 건 답답하다. 문서를 org로 가져와야
  우리가 SSOT를 완벽히 주무를 수 있다. 변환은 memex-kb의 검증된 `paper2org` 계열을
  쓴다(→ `PAPER-IMPORT.md`). 이 리포 안에서 변환기를 새로 만들지 않는다.
- **코드는 '동작하는 것'으로 전제한다.** jlens 코드는 읽어서 이해하는 대상이지,
  꼭 돌려봐야 하는 대상이 아니다. GPU 노드는 있지만 실행은 옵션이고 나중 일이다.
  힣이 명시적으로 "돌려보자" 하기 전엔 실행·모델 다운로드·산출물 커밋을 하지 않는다.

## 담당자의 역할

여기엔 담당이 필요했고, 이 리포가 그 담당을 맡는다. 담당자로서:

- 저자나 원 maintainer처럼 굴지 말 것. 읽은 만큼만 말하고, 단정하지 말 것.
- 힣 대신 읽고, 요약하고, 코드와 논문을 잇고, 재미있는 각도를 던질 것.
- 앤트로픽·케빈켈리 등 원저작권을 존중할 것. 저작권물은 gitignore 후 담고, 명시
  요청 전엔 커밋하지 않는다.
- 비공개 메모·토큰·로컬 경로·사적 핸드오프를 tracked file에 넣지 말 것.

## North star — 왜 이걸 가져왔나

레퍼런스는 Denote ID로 건다(제목은 바뀔 수 있으니 ID로 찾는다).

- `20241213T143821` — 북극성. J-space(Claude 안쪽의 보고·조절 가능한 작업공간) ↔
  케빈 켈리 창발자아루프/외자아 ↔ 호프스태터 strange loop ↔ 힣의 1KB 공개키를 한
  시간축에 묶은 노트. 힣이 세운 **"직관 → 내부 작업공간 → 외자아"** 계보에서 이
  리포(J-space)는 두 번째 사건이다.

이 계보를 넓히는 게 이 리포의 재미다. 앤트로픽 J-space만이 아니라, 케빈 켈리
「Emergent Self Loop」·「Quiet, My Exoself」 같은 인접 텍스트도 논의 맥락으로 함께
끌어와 읽는다(원문 일부는 이미 북극성 노트에 보존돼 있다).

## 소재를 담는 절차

- 문서 import/export 기계 절차는 `PAPER-IMPORT.md`에 둔다(레퍼런스). 저작권물
  목적지는 gitignore부터.
- 첫 소재: J-space 논문 — `https://transformer-circuits.pub/2026/workspace/index.html`.
- 다음 소재: 힣이 지목하는 앤트로픽 공개물, 케빈 켈리 글 등. 하나 담을 때마다
  `papers/` 아래 org 정본을 두고, 아래 "담긴 소재" 목록과 필요하면 북극성 노트에
  잇는다.

### 담긴 소재

- **J-space** — 「Verbalizable Representations Form a Global Workspace in Language
  Models」(2026-07-06, `transformer-circuits.pub/2026/workspace`). `PAPER-IMPORT.md`
  절차로 2026-07-07 import 완료 → `papers/anthropic/jspace/`(gitignore, 로컬 전용):
  org SSOT + html + acmart pdf + **오프라인 캡슐/인터랙티브 html**. 검증 통과 —
  인용 155·PNG 10·csl-entry 173·figure 84, 캡슐 external/failed 0(오프라인 재스윕
  PASS). 재현은 `PAPER-IMPORT.md`의 5개 명령 그대로.

## 이 문서를 고칠 때

소재가 늘거나 방향이 바뀌면 힣과 함께 고친다. 방향은 여기 대략 적어두고, 세부
절차·개별 노트는 레퍼런스(Denote ID / `PAPER-IMPORT.md`)로만 남긴다 — "문서 그냥
봐라"로 미루지 말 것.
