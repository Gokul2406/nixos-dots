{ config, pkgs, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    ./modules/fonts.nix
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "zenith"; # Define your hostname.

  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Kolkata";

  i18n.defaultLocale = "en_IN";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IN";
    LC_IDENTIFICATION = "en_IN";
    LC_MEASUREMENT = "en_IN";
    LC_MONETARY = "en_IN";
    LC_NAME = "en_IN";
    LC_NUMERIC = "en_IN";
    LC_PAPER = "en_IN";
    LC_TELEPHONE = "en_IN";
    LC_TIME = "en_IN";
  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.blueman.enable = true;
  programs.niri.enable = true;
  programs.xwayland.enable = true;
  programs.neovim.enable = true;
  programs.fish.enable = true;

  users.users."zenith" = {
    isNormalUser = true;
    description = "gokul";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.fish;
    packages = with pkgs; [ ];
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    kitty
    zotero
    sioyek
    nixfmt
    tree
    bat
  ];

  programs.firefox.enable = true;

  services.desktopManager.plasma6.enable = true;
  services.displayManager = {
    sddm.enable = true;
    sddm.wayland.enable = true;
  };

  services.upower.enable = true;
  services.power-profiles-daemon.enable = true;

  environment.variables.EDITOR = "neovim";

  system.stateVersion = "26.05"; 
}
