{ inputs, ... }:
{
  imports = [
    ./fonts.nix
    ./hardware.nix
    ./nh.nix
    ./network.nix
    ./boot.nix
    ./packages.nix
    ./greetd.nix
    ./security.nix
    ./services.nix
    ./stylix.nix
    ./system.nix
    ./user.nix
    ./virtualisation.nix
    inputs.stylix.nixosModules.stylix
  ];

  drivers.intel.enable = true;
}
