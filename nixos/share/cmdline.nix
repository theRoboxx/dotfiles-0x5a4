{
  config,
  pkgs,
  ...
}: {
  programs.fish.enable = true;

  environment.shellAliases = {
    ls = null;
    ll = null;
    l = null;
  };

  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;
  programs.neovim.withPython3 = true;
  programs.neovim.viAlias = true;

  environment.systemPackages = with pkgs; [
    acpi
    bat
    btop
    delta
    direnv
    duf
    eza
    fastfetch
    fd
    file
    fish
    fzf
    gcc
    git
    gnumake
    jq
    libclang
    mdcat
    nodejs_20
    psmisc
    python3
    rcm
    ripgrep
    sops
    speedtest-rs
    starship
    tmux
    unzip
    wget
    xxd
  ];
}
