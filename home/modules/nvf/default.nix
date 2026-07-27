{pkgs, ...}:
{
imports = [
        ./ui.nix
        ./langs/python.nix
        ./completion.nix
        ./plugins/neorg.nix
];
  programs.nvf = {
    enable = true;
    settings.vim.languages = {
        enableFormat = true;
        enableExtraDiagnostics = true;
    };
  };
}
