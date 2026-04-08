{ pkgs, ... }:
{
  hardware = {
    sane = {
      enable = false;
    };

    logitech.wireless = {
      enable = false;
      enableGraphics = false;
    };

    graphics.enable = true;

    keyboard.qmk.enable = true;

    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };

    local.hardware-clock.enable = false;
  };
}
