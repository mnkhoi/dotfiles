{ ... }:
{
  imports = [
    ./fonts.nix
    ./hardware.nix
    ./nh.nix
    ./network.nix
    ./boot.nix
    ./packages.nix
  ];

  drivers.intel.enable = true;
}
