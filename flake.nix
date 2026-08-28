{

    description = "NixOS config of bitflip";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        noctalia = {
            url = "github:noctalia-dev/noctalia/cachix";
        };

        niri-nix = {
            url = "git+https://codeberg.org/BANanaD3V/niri-nix";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        vicinae.url = "github:vicinaehq/vicinae";
        nvf = {
            url = "github:NotAShelf/nvf";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        zen-browser = {
            url = "github:0xc000022070/zen-browser-flake";
            inputs = {
                nixpkgs.follows = "nixpkgs";
                home-manager.follows = "home-manager";
            };
        };
    };

    nixConfig = {
        extra-substituters = [
            "https://noctalia.cachix.org"
            "https://vicinae.cachix.org"
        ];

        extra-trusted-public-keys = [
            "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
            "vicinae.cachix.org-1:1kDrfienkGHPYbkpNj1mWTr7Fm1+zcenzgTizIcI3oc="
        ];
    };

    outputs =
        {
            self,
            nixpkgs,
            home-manager,
            niri-nix,
            noctalia,
            vicinae,
            nvf,
            ...
        }@inputs:
        {
            nixosConfigurations.zenith = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                specialArgs = { inherit inputs; };

                modules = [
                    ./hosts/configuration.nix
                    home-manager.nixosModules.home-manager
                    {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;
                        home-manager.users.zenith = {
                            imports = [
                                ./home/home.nix
                                inputs.vicinae.homeManagerModules.default
                                inputs.zen-browser.homeModules.beta
                                nvf.homeManagerModules.default
                            ];
                        };
                        home-manager.extraSpecialArgs = { inherit inputs; };
                    }
                ];
            };
        };
}
