{pkgs, ...}:
{
imports = [
        ./ui.nix
        ./langs/python.nix
        ./completion.nix
];
  programs.nvf = {
    enable = true;
    settings.vim.languages = {
        enableFormat = true;
        enableExtraDiagnostics = true;
    };
  };
}
