{ pkgs, ... }:
{
  virtualisation = {
    docker.enable = false;

    podman.enable = false;

    libvirtd.enable = true;
  };

  programs = {
    virt-manager.enable = false;
  };

  environment.systemPackages = with pkgs; [
    virt-viewer
  ];
}
