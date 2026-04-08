{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    inputs.openconnect-sso.packages.${pkgs.system}.openconnect-sso
    audacity
    discord
    nodejs
    gcc
    uv
    tree-sitter
    zathura
    go
    protobuf
    texliveFull

    jdk24
    openconnect
    rustup
    networkmanager-openconnect
    bun

    gnumake
    inetutils
  ];
}
