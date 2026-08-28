{

    programs.nvf.settings.vim = {
        dashboard = {
            dashboard-nvim.enable = true;
        };
        formatter.conform-nvim = {
            enable = true;

            setupOpts = {
                format_on_save = {
                    enable = true;
                    timeout_ms = 500;
                };

            };
        };
        terminal.toggleterm.enable = true;

        fzf-lua.enable = true;
        theme = {
            enable = true;
            name = "catppuccin";
            style = "mocha";
            transparent = true;
        };

        options = {
            tabstop = 4;
            shiftwidth = 4;
            softtabstop = 4;
            expandtab = true;
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
    };
}
