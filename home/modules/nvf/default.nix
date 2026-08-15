{
imports = [
        ./ui.nix
        ./langs/python.nix
        ./langs/rust.nix
        ./langs/nix.nix
        ./completion.nix
        ./plugins/neorg.nix
        ./binds.nix
];
  programs.nvf = {
    enable = true;
    settings.vim = {
        languages = {
            enableFormat = true;
            enableExtraDiagnostics = true;
        };
        globals = {
            mapleader = " ";
        };
    };
  };
}
