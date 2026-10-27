{ pkgs, lib, ... }:

{
    imports = [
        /etc/nixos/hardware-configuration.nix
        ./modules/fonts.nix
    ];

    nix.settings.experimental-features = [
        "nix-command"
        "flakes"
    ];

    nix.settings = {
        trusted-users = [
            "root"
            "zenith"
        ];

        substituters = [
            "https://noctalia.cachix.org"
            "https://vicinae.cachix.org"
        ];

        # 3. Trust the public keys for Vicinae and Noctalia
        trusted-public-keys = [
            "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
            "vicinae.cachix.org-1:1kDrfienkGHPYbkpNj1mWTr7Fm1+zcenzgTizIcI3oc="
        ];
    };

    hardware.bluetooth = {
        enable = true;
        powerOnBoot = true;
    };

    hardware.graphics.enable = true;
    hardware.graphics.enable32Bit = true;

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.hostName = "zenith"; # Define your hostname.

    networking.proxy.default = "http://172.16.2.251:3128/";
    networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

    networking.networkmanager.enable = true;

    virtualisation.podman = {
        enable = true;
        dockerCompat = true;
    };

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
    services.vaultwarden.enable = true;
    programs.niri.enable = true;
    programs.nix-ld.enable = true;
    programs.xwayland.enable = true;
    programs.neovim.enable = true;
    programs.fish.enable = true;

    programs.nh = {
        enable = true;
        clean.enable = true;
        clean.extraArgs = "--keep-since 4d --keep 3";
        flake = "/home/zenith/.config/nixos-dots/";
    };

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
        uv
        devenv
        xwayland-satellite
        lsd
        distrobox
    ];

    programs.firefox.enable = true;

    services.desktopManager.plasma6.enable = true;
    services.displayManager.defaultSession = lib.mkForce "niri";
    services.displayManager = {
        sddm.enable = true;
        sddm.wayland.enable = true;
    };
    services.cloudflare-warp.enable = true;
    services.upower.enable = true;
    services.power-profiles-daemon.enable = true;

    environment.variables.EDITOR = "neovim";

    system.stateVersion = "26.05";
}
