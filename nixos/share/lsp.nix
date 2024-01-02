{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    beautysh
    hadolint
    statix
    alejandra
    ruff
    black
    taplo
    prettierd
    nodePackages.bash-language-server
    nodePackages.typescript-language-server
    clojure-lsp
    texlab
    lua-language-server
    marksman
    pyright
    rust-analyzer
    zls
  ];
}
