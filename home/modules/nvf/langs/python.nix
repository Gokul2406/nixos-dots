{
    programs.nvf.settings.vim.languages.python = {

        enable = true;
        lsp = {
            enable = true;
            servers = [
                "ty"
                "ruff"
            ];
        };
        treesitter.enable = true;
    };
}
