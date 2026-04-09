{ profile, ... }:
{
  services = {
    libinput.enable = true;
    fstrim.enable = true;
    gvfs.enable = true;

    openssh = {
      enable = true;
      settings = {
        X11Forwarding = true;
        PermitRootLogin = "no";
        PasswordAuthentication = true;

      };
      ports = [ 22 ];
    };

    blueman.enable = true;
    tumbler.enable = true;

    pipewire = {
      enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
      pulse.enable = true;
      jack.enable = true;
    };
  };
}
