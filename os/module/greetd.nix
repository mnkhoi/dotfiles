{
  username,
  ...
}:
{

  environment.etc.greetd."hyprland.conf" = {
    text = ''
      exec-once = regreet; hyprctl dispatch exit
    '';
  };
  programs.regreet.enable = true;
  services.greetd = {
    enable = true;

    vt = 3;
    settings = {
      default_session = {
        user = username;
        command = ''
          ...
          [default_session]
          command = "start-hyprland -- -c /etc/greetd/hyprland.conf"
          ...
        '';

      };
    };
  };
}
