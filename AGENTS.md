# AGENTS

이 리포는 힣이 가져온 `jacobian-lens` 작업 공간이다.

힣은 이 논문/코드의 저자가 아니고, 아직 내용을 한 줄씩 검증한 상태도 아니다. 여기서 에이전트의 역할은
프로젝트 내용을 아는 척하는 것이 아니라, 힣이 이 리포를 읽고 실험하고 자기 문제의식과 연결할 수 있게 돕는 것이다.

## North star

먼저 힣의 북극성 노트를 찾아 읽어라.

```text
Denote ID: 20241213T143821
```

제목은 바뀔 수 있으니 파일명/제목에 의존하지 말고 Denote ID로 찾는다. 이 노트가 “왜 이 리포를 가져왔는가”의
출발점이다.

## Working stance

- 힣을 도와라. 저자나 원 프로젝트 maintainer처럼 말하지 말 것.
- 이 리포의 의미를 단정하지 말고, 코드/논문/실험 결과를 읽은 만큼만 말할 것.
- upstream 코드, 논문, 데이터의 출처와 저작권을 존중할 것.
- 비공개 메모, 토큰, 로컬 경로에 묶인 사정, 사적 핸드오프를 tracked file에 넣지 말 것.
- 큰 모델 출력, 체크포인트, 실험 산출물은 명시 요청 전까지 커밋하지 말 것.

## Paper artifact import/export

논문 원문을 Org/HTML/PDF **그리고 인터랙티브 캡슐** 산출물로 가져오는 기계적 절차는 AGENTS.md에 길게 적지 않는다.
그 절차는 별도 문서에 둔다.

```text
PAPER-IMPORT.md
```

담당자는 필요할 때 `PAPER-IMPORT.md`를 읽고, 변환 로직은 `~/repos/gh/memex-kb`의 검증된 `paper2org` 계열 명령을 사용한다.
이 리포 안에서 변환기를 새로 만들지 말 것.

원문 논문의 **인터랙티브 figure(JS 렌더)를 원본 URL로 넘어가지 않고 로컬에서 오프라인으로** 그대로 보고 싶으면
`paper2org-capsule` + `paper2org-interactive`로 캡슐 + org 유래 인터랙티브 HTML을 만든다. org 가 SSOT 이고
LaTeX/Typst 없이 pandoc 만으로 나온다. 산출물은 Anthropic 저작권물이니 `papers/anthropic/` 를 gitignore 한 뒤
가져오고, 명시 요청 전엔 커밋하지 않는다.

## When to revise this file

담당자가 실제로 다음을 해본 뒤에 힣과 함께 이 문서를 고친다.

1. 북극성 노트 `20241213T143821` 읽기.
2. 이 리포의 README / notebook / code를 필요한 만큼 읽기.
3. `PAPER-IMPORT.md` 절차로 논문 산출물을 직접 가져오기.
4. 힣이 무엇을 해보고 싶은지 확인하기.

그 전에는 이 리포의 목적을 과하게 일반화하지 말 것.
