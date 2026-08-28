{ pkgs, ... }:
{
    programs.nvf.settings.vim.notes.neorg = {

        enable = true;
        treesitter.enable = true;
        setupOpts = {
            load = {
                "core.defaults" = { };
                "core.concealer" = { };
            };
        };
    };
}
