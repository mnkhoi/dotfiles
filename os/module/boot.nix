{ pkgs, config, ... }:
{
  boot = {
    loader.systemd-boot.enable = true;
    load.efi.canTouchEfiVariables = true;
  };
}
