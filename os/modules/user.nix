{
  pkgs,
  inputs,
  username,
  host,
  profile,
  ...
}:
let
  gitUsername = "mnkhoi";
in
{
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  environment.localBinInPath = true;

  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = false;

    backupFileExtension = "backup";

    extraSpecialArgs = {
      inherit
        inputs
        username
        host
        profile
        ;
    };
    users.${username} = {
      imports = [ ./../home ];
      home = {
        username = "${username}";
        homeDirectory = "/home/${username}/";
        stateVersion = "23.11";
      };
    };
  };

  users.mutableUsers = true;
  users.users.${username} = {
    isNormalUser = true;
    description = "mnkhoi";
    extraGroups = [
      "adbusers"
      "libvirtd"
      "lp"
      "networkmanager"
      "wheel" # subdo access
      "vboxusers" # Virtual Box
    ];
    shell = pkgs.zsh;

    ignoreShellProgramCheck = true;
  };

  nix.settings.allowed-users = [ "${username}" ];
}
