{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    ./modules/niri.nix
    ./modules/noctalia.nix
    ./modules/fish.nix
    ./modules/starship.nix
    ./modules/kitty.nix
    ./modules/vicinae.nix
    ./modules/zoxide.nix
    ./modules/nvf
  ];
  home.username = "zenith";
  home.homeDirectory = "/home/zenith";

  home.stateVersion = "26.11";

  home.packages = with pkgs; [
    git
    htop

  ];

  programs.home-manager.enable = true;
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };
  programs.fastfetch.enable = true;
}
