{
  description = "jacobian-lens survey — org SSOT → acmart PDF + pandoc HTML paper pipeline";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      # 오라클(aarch64)·워크스테이션(x86_64) 양쪽에서 devshell 이 나야 한다.
      systems = [ "x86_64-linux" "aarch64-linux" ];
      forAll = nixpkgs.lib.genAttrs systems;
    in {
      devShells = forAll (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          # scheme-full(~5GB)은 과함. 이 파이프가 실제로 쓰는 건 acmart + latexextra 뿐이다.
          # scheme-medium(엔진+공통, 대부분 store 캐시됨) 에 collection-latexextra 를 얹어
          #   acmart 의 \RequirePackage 체인(totpages·environ·ncctools·comment·hyperxmp·
          #   ifmtarg·textcase·draftwatermark…)과 org-latex 기본셋(wrapfig·rotating·ulem·
          #   capt-of)을 한 번에 해결. acmart/폰트는 별도 컬렉션이라 명시.
          # cite_export=basic 이라 biber/biblatex 불필요.
          tex = pkgs.texlive.combine {
            inherit (pkgs.texlive)
              scheme-medium
              collection-latexextra   # acmart deps + org 기본셋 일괄
              latexmk
              acmart                   # sigconf 클래스 (collection-publishers 소속)
              newtx libertine;         # acmart 폰트 (collection-fontsextra 소속)
          };
        in {
          default = pkgs.mkShell {
            buildInputs = [
              tex
              pkgs.emacs      # org → LaTeX (build.el)
              pkgs.pandoc     # org → HTML (citeproc + KaTeX)
            ];
          };
        });
    };
}
