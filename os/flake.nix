{
  description = "KOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # For vpn
    openconnect-sso = {
      url = "github:jcszymansk/openconnect-sso";
      inputs.nixpkgs.follows = "nixpkgs-openconnect-sso";
    };
    nixpkgs-openconnect-sso.url = "github:nixos/nixpkgs/46397778ef1f73414b03ed553a3368f0e7e33c2f";
  };

  outputs =
    inputs@{ nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      host = "nixos-laptop";
      profile = "intel";
      username = "khoinguyen";
    in
    {
      nixConfigurations = {
        hostname = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [
            ./host
            ./module
          ];
          specialArgs = {
            inherit inputs;
            inherit username;
            inherit host;
            inherit profile;
          };
        };
      };
    };
}
