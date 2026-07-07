# PAPER-IMPORT

This file records the mechanical paper import/export procedure for this repo.
Keep the converter in `~/repos/gh/memex-kb`; do not reimplement it here.

## Source

```text
https://transformer-circuits.pub/2026/workspace/index.html
```

## Output layout

```text
papers/anthropic/jspace/
├── jspace.org                 # static archive (SSOT for text/math/citations)
├── jspace.acmart.pdf          # ArXiv-style PDF (also .acmart.org/.tex/.bbl side files)
├── jspace.html                # static HTML (citations + MathJax)
├── jspace.interactive.org     # interactive SSOT (raw figure blocks + head runtime)
├── bibliography.bib
├── paper.html
├── png/
└── capsule/                   # offline runtime bundle — Anthropic assets, do NOT commit
    ├── anthropic-serve/        # distill template + KaTeX (shared runtime)
    └── 2026/workspace/
        ├── jspace.interactive.html   # ← open this to see the live figures offline
        ├── public/ data/ png/ …
        └── capsule-manifest.json
```

## Protect the destination first

This repo is tracked by git, and every artifact below (paper text, PNGs, the ~13 MB capsule) is
Anthropic source material. Gitignore the whole output dir before importing so nothing is committed by
accident:

```bash
grep -qxF 'papers/anthropic/' .gitignore || echo 'papers/anthropic/' >> .gitignore
```

## Import / export commands

Run from this repo root:

```bash
MEMEX_KB="${MEMEX_KB:-$HOME/repos/gh/memex-kb}"
URL="https://transformer-circuits.pub/2026/workspace/index.html"
OUT="$PWD/papers/anthropic"

# static archive (Org SSOT + HTML + acmart PDF)
"$MEMEX_KB/run.sh" paper2org       "$URL" --name jspace --outdir "$OUT" --fetch
"$MEMEX_KB/run.sh" paper2org-html  "$URL" --name jspace --outdir "$OUT"
"$MEMEX_KB/run.sh" paper2org-pdf   "$URL" --name jspace --outdir "$OUT"

# interactive: the whole reason for this — see the paper's live JS figures OFFLINE,
# without going back to transformer-circuits.pub. Org stays the SSOT; pandoc alone builds the HTML.
"$MEMEX_KB/run.sh" paper2org-capsule     "$URL" --name jspace --outdir "$OUT"
"$MEMEX_KB/run.sh" paper2org-interactive "$URL" --name jspace --outdir "$OUT"
```

## View the interactive document

```bash
cd papers/anthropic/jspace/capsule && python3 -m http.server 8877
# open http://localhost:8877/2026/workspace/jspace.interactive.html
```

Expect: figures render (parquet loads from localhost), math via local KaTeX, and **zero external
requests** — fully self-contained. The capsule alone removes the boundary; the interactive HTML is the
Org-derived version of it.

## Validation

```bash
test -f papers/anthropic/jspace/jspace.org
test -f papers/anthropic/jspace/bibliography.bib
test -d papers/anthropic/jspace/png
test -f papers/anthropic/jspace/jspace.html
test -f papers/anthropic/jspace/jspace.acmart.pdf
test -f papers/anthropic/jspace/jspace.interactive.org
test -f papers/anthropic/jspace/capsule/2026/workspace/jspace.interactive.html

# leftover sentinels / raw Distill tags — this check is for the STATIC org only.
# jspace.interactive.org legitimately contains <d-cite>/<d-math> inside raw figure blocks, so do
# NOT run this against the interactive org.
rg -n 'ZZ(MB|MI|CI|FN)[0-9]+ZZ|<d-[a-z]+' \
  papers/anthropic/jspace/jspace.org || true

# capsule is self-contained: manifest must report no external and no failed requests
python - <<'PY'
import json
m = json.load(open('papers/anthropic/jspace/capsule/capsule-manifest.json'))
print('capsule assets =', m['asset_count'])
print('external_requests =', m['external_requests'])
print('failed_requests  =', m['failed_requests'])
PY

pdfinfo papers/anthropic/jspace/jspace.acmart.pdf | rg '^(Title|Pages|File size)'

python - <<'PY'
from pathlib import Path
html = Path('papers/anthropic/jspace/jspace.html').read_text(errors='ignore')
print('raw [cite: count =', html.count('[cite:'))
print('csl-entry count =', html.count('csl-entry'))
print('citation span count =', html.count('<span class="citation"'))
print('png refs =', html.count('png/'))
print('spot-check Block/Weiskrantz =', 'Block 1995' in html and 'Weiskrantz 1986' in html)
PY
```

Expected J-space baseline from memex-kb validation:

- PDF pages: 93
- acmart authors: 16
- natbib citation commands: 155
- HTML raw `[cite:` count: 0
- HTML `csl-entry` count: 173
- HTML citation spans: about 120
- HTML PNG references: 10
- HTML spot-check includes `Block 1995` and `Weiskrantz 1986`
- static PNG files: 10
- leftover sentinels / Distill tags in `jspace.org`: 0
- capsule assets: about 219 (~11 MB); `external_requests` and `failed_requests` both empty
- `jspace.interactive.org` raw figure blocks: 84
- `jspace.interactive.html` served from the capsule: `figure[data-fignum]` = 84, external requests = 0,
  console errors = 0, math via local KaTeX

## If something fails

- Fix converter problems in `~/repos/gh/memex-kb`, not in this repo.
- Report the exact command, artifact path, and mismatch.
- Keep source links and provenance intact.
- Commit generated paper artifacts only when explicitly requested.
