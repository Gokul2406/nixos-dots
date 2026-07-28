{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;

    package = pkgs.kitty;

    shellIntegration.enableFishIntegration = true;

    font = {
      name = "JetBrainsMono Nerd Font";
      size = 14;
    };

    settings = {
      confirm_os_window_close = 0;
      enable_audio_bell = false;
      visual_bell_duration = 0;
      cursor_blink_interval = 0;
      scrollback_lines = 10000;
      tab_bar_edge = "top";
      tab_bar_style = "powerline";
      window_padding_width = 8;
      remember_window_size = true;
      background_opacity = "1.0";
      hide_window_decorations = "yes";
    };

    keybindings = {
      "ctrl+shift+c" = "copy_to_clipboard";
      "ctrl+shift+v" = "paste_from_clipboard";

      "ctrl+shift+t" = "new_tab";
      "ctrl+shift+w" = "close_tab";

      "ctrl+shift+enter" = "new_window";

      "ctrl+shift+left" = "previous_tab";
      "ctrl+shift+right" = "next_tab";
    };
    themeFile = "Catppuccin-Mocha";
  };
}
