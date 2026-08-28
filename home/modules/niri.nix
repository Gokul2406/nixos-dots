{ config, pkgs, ... }:

{
    wayland.windowManager.niri = {
        enable = true;
        settings = {
            prefer-no-csd = [ ];
            spawn-at-startup = [
                [ "noctalia" ]
                [
                    "vicinae"
                    "server"
                ]
                [ "xwayland-satellite" ]
            ];
            animations = {
                window-open = {
                    duration-ms = 250;
                    curve = "ease-out-expo";
                };
                window-close = {
                    duration-ms = 250;
                    curve = "ease-out-quad";
                };
                exit-confirmation-open-close.off = [ ];
            };

            blur = {
                on = [ ];
                passes = 4;
            };

            layout = {
                focus-ring.off = [ ];
                border = {
                    off = [ ];
                };

                shadow = {
                    on = [ ];
                    softness = 30;
                    spread = 5;
                    draw-behind-window = true;
                    color = "#00000070";
                };

            };
            window-rule = {
                draw-border-with-background = [ false ];
                geometry-corner-radius = [ 20 ];
                clip-to-geometry = [ true ];
                tiled-state = [ true ];
            };
            input = {
                touchpad = {
                    dwt = [ ];
                    tap = [ ];
                    natural-scroll = [ ];
                    tap-button-map = "left-right-middle";
                    scroll-factor = 0.75;
                };
                keyboard = {
                    repeat-delay = 600;
                    repeat-rate = 25;
                };
            };

            binds = {
                "Alt+Left".focus-window-up = [ ];
                "Mod+Tab".focus-workspace-previous = [ ];
                "Mod+Shift+Tab".focus-column-right-or-first = [ ];
                "Mod+Q".close-window = [ ];

                "Mod+K".focus-workspace-up = [ ];
                "Mod+J".focus-workspace-down = [ ];
                "Mod+H".focus-column-left = [ ];
                "Mod+L".focus-column-right = [ ];

                "Mod+Ctrl+K".move-window-up-or-to-workspace-up = [ ];
                "Mod+Ctrl+J".move-window-down-or-to-workspace-down = [ ];
                "Mod+Ctrl+H".move-column-left-or-to-monitor-left = [ ];
                "Mod+Ctrl+L".move-column-right-or-to-monitor-right = [ ];

                "Mod+Shift+K".move-workspace-up = [ ];
                "Mod+Shift+J".move-workspace-down = [ ];

                "Mod+V".toggle-window-floating = [ ];
                "Mod+Shift+T".toggle-column-tabbed-display = [ ];

                "Mod+BracketLeft".consume-or-expel-window-left = [ ];
                "Mod+BracketRight".consume-or-expel-window-right = [ ];

                "Mod+R".switch-preset-column-width = [ ];
                "Mod+Shift+R".switch-preset-window-height = [ ];
                "Mod+F".maximize-column = [ ];
                "Mod+Shift+F" = {
                    fullscreen-window = [ ];
                    _props.hotkey-overlay-title = "Fullscreen Window";
                };

                "Mod+Minus".set-column-width = "-10%";
                "Mod+Equal".set-column-width = "+10%";

                "Mod+Shift+Minus".set-window-height = "-10%";
                "Mod+Shift+Equal".set-window-height = "+10%";

                "Mod+Shift+O".power-off-monitors = [ ];
                "Mod+Shift+E".quit = [ ];
                "Mod+T".spawn = [ "kitty" ];
                "Mod+Space".spawn = [
                    "vicinae"
                    "toggle"
                ];
                "Mod+1".focus-workspace = [ 1 ];
                "Mod+2".focus-workspace = [ 2 ];
                "Mod+3".focus-workspace = [ 3 ];
                "Mod+4".focus-workspace = [ 4 ];
                "Mod+5".focus-workspace = [ 5 ];
                "Mod+6".focus-workspace = [ 6 ];
                "Mod+7".focus-workspace = [ 7 ];
                "Mod+8".focus-workspace = [ 8 ];
                "Mod+9".focus-workspace = [ 9 ];
                "Mod+Ctrl+1".move-column-to-workspace = [ 1 ];
                "Mod+Ctrl+2".move-column-to-workspace = [ 2 ];
                "Mod+Ctrl+3".move-column-to-workspace = [ 3 ];
                "Mod+Ctrl+4".move-column-to-workspace = [ 4 ];
                "Mod+Ctrl+5".move-column-to-workspace = [ 5 ];
                "Mod+Ctrl+6".move-column-to-workspace = [ 6 ];
                "Mod+Ctrl+7".move-column-to-workspace = [ 7 ];
                "Mod+Ctrl+8".move-column-to-workspace = [ 8 ];
                "Mod+Ctrl+9".move-column-to-workspace = [ 9 ];
            };
        };
    };

}
