{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      fira-code
      fira-code-symbols

      nerd-fonts.im-writing
      nerd-fonts.blex-mono

      jetbrains-mono

      roboto
      roboto-mono

    ];
  };
}
