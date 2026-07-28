{
        programs.nvf.settings.vim = {
                  keymaps = [
            {
              key = "<leader>e";
              mode = "n";
              action = "<Cmd>NvimTreeToggle<CR>";
              desc = "File explorer";
            }
            {
              key = "<leader>w";
              mode = "n";
              action = "<Cmd>wa<CR>";
              desc = "Save all files";
            }
            {
              key = "<leader>q";
              mode = "n";
              action = "<Cmd>qa<CR>";
              desc = "Exit";
            }

      ];
        };
 }
