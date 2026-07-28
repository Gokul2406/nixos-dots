{
        programs.nvf.settings.vim.languages.nix = {
                enable = true;
                format = {
                    enable = true;
                    type = ["nixfmt-rs"];
                };
                lsp = {
                        enable = true;
                        servers = ["nil"];
                };
                treesitter.enable = true;
        };
}
