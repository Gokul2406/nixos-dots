{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./niri.nix
    ./noctalia.nix
  ];
  home.username = "zenith";
  home.homeDirectory = "/home/zenith";

  home.stateVersion = "26.11";

  # User-specific packages that don't need root/system-wide installation
  home.packages = with pkgs; [
    git
    htop

  ];

  # Let Home Manager manage itself (required)
  programs.home-manager.enable = true;
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };

}
