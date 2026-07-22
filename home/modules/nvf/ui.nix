{
        programs.nvf.settings.vim = {
                theme = {
                        enable = true;
                        name = "gruvbox";
                        style = "dark";
                        transparent = true;
                };
                statusline.lualine.enable = true;
                filetree = {
                        nvimTree = {
                                enable = true;
                        };
                };
                
                tabline = {
                        nvimBufferline = {
                                enable = true; 
                        };
                };

                telescope.enable = true;
                treesitter.enable = true;
                treesitter.context.enable = true;

                binds.whichKey.enable = true;

            git = {
              enable = true;
              gitsigns.enable = true;
              gitsigns.codeActions.enable = false; # throws an annoying debug message
              neogit.enable = true;
            };

            dashboard.alpha.enable = true;

        };
}
