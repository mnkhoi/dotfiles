{
  pkgs,
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

    # Configuration is at dotfiles/config/starship.toml
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
    eza
    btop
    lm_sensors

    pavucontrol
    ripgrep
    socat
    unzip
    unrar
    yazi

    hyprpaper
    waypaper
    wget
  ];
}
