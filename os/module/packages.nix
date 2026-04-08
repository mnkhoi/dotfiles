{
  pkgs,
  inputs,
  ...
}:
{
  programs = {
    nix-ld = {
      enable = true;
      libraries = with pkgs; [
        python3
      ];
    };

    neovim = {
      enable = true;
      defaultEditor = true;
    };

    starship = {
      enable = true;
      enableZshIntegration = true;

    };

    firefox.enable = true;

    hyperland = {
      enable = true;
      withUWSM = false;
    };

    dconf.enable = true;
    mtr.enable = true;

    hyprlock.enable = true;

    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };

  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    zoxide
    eza
    btop
    lm_sensors

    pavucontrol
    ripgrep
    socat
    unzip
    unrar

    hyprpaper
    waypaper
    wget
  ];
}
