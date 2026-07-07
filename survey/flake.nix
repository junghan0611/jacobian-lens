{
  description = "jacobian-lens survey — org SSOT → acmart PDF + pandoc HTML paper pipeline";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {
    devShells.x86_64-linux.default = let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      # scheme-full 이면 acmart/폰트/biber 등 의존성이 대부분 해결됨.
      tex = pkgs.texlive.combine {
        inherit (pkgs.texlive) scheme-full latexmk;
      };
    in pkgs.mkShell {
      buildInputs = [
        tex
        pkgs.emacs      # org → LaTeX (build.el)
        pkgs.pandoc     # org → HTML (citeproc + KaTeX)
      ];
    };
  };
}
