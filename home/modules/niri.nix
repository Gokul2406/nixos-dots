{ config, pkgs, ... }:

{
  programs.niri = {
    settings = {
      spawn-at-startup = [
        {
          command = [ "noctalia" ];
        }
        {
          command = [
            "vicinae"
            "server"
          ];
        }
      ];
      binds = with config.lib.niri.actions; {
        # Applications
        "Mod+Return".action = spawn "kitty";
        "Mod+Space".action = spawn "vicinae" "open";

        # Close window
        "Mod+Q".action = close-window;

        # Focus windows
        "Mod+H".action = focus-column-left;
        "Mod+L".action = focus-column-right;
        "Mod+J".action = focus-window-down;
        "Mod+K".action = focus-window-up;

        # Move windows
        "Mod+Ctrl+H".action = move-column-left;
        "Mod+Ctrl+L".action = move-column-right;
        "Mod+Ctrl+J".action = move-window-down;
        "Mod+Ctrl+K".action = move-window-up;

        # Fullscreen
        "Mod+Shift+F".action = fullscreen-window;

        # Maximize column
        "Mod+F".action = maximize-column;

        # Floating
        "Mod+V".action = toggle-window-floating;

        # Workspace navigation
        "Mod+Page_Up".action = focus-workspace-up;
        "Mod+Page_Down".action = focus-workspace-down;

        # Move window to workspace
        "Mod+Ctrl+Page_Up".action = move-column-to-workspace-up;
        "Mod+Ctrl+Page_Down".action = move-column-to-workspace-down;

        # Overview
        "Mod+O".action = toggle-overview;
        "Mod+1".action = focus-workspace 1;
        "Mod+2".action = focus-workspace 2;
        "Mod+3".action = focus-workspace 3;

      };
    };
  };
}
