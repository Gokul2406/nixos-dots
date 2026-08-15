    
{
        programs.nvf.settings.vim.languages.rust = {
                enable = true;
                lsp = {
                        enable = true;
                        servers = ["rust-analyzer"];
                };
                treesitter.enable = true;
        };
}
