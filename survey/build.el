;; build.el — org → acmart LaTeX → PDF
;;
;; VENDORED from memex-kb scripts/paper_build.el ("B-with-A-provenance"):
;; 변환 로직 SSOT = memex-kb. 이 파일은 그 사본이고, 개선분은 memex-kb→여기로
;; 동기화한다. geworfen/docs/build.el 과 같은 조상(templates/arxiv-acm/build.el).
;;
;; Usage: emacs -Q --batch --script build.el survey.org
;; (acmart 는 texlive scheme-full 등에 포함. nix develop 안에서 실행.)

(require 'seq)
(require 'ox-latex)

;; 논문 변환 특화 2줄 (memex-kb 에서 흡수):
;;   미해결 fig 참조에서 export 가 멈추지 않게 + 에러 시 org AST 덤프로 로그 폭발 방지.
(setq debug-on-error nil
      backtrace-on-error-noninteractive nil
      org-export-with-broken-links t)

;; acmart 는 newtx 를 쓰는데 amssymb 와 충돌 → 기본 패키지에서 제거
(setq org-latex-default-packages-alist
      (seq-remove (lambda (pkg) (equal (cadr pkg) "amssymb"))
                  org-latex-default-packages-alist))

(add-to-list 'org-latex-classes
             '("acmart"
               "\\documentclass[sigconf]{acmart}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

(setq org-latex-pdf-process
      '("latexmk -f -pdf -interaction=nonstopmode -output-directory=%o %f"))

(let ((org-file (car command-line-args-left)))
  (when org-file
    (find-file org-file)
    (org-latex-export-to-pdf)))
