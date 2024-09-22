{ config, ... }:
let
  inherit (config.lib.stylix.colors.withHashtag) base05 base04 base08;
in
{
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        hide_cursor = true;
      };
      background = [
        {
          path = "~/.dots/home/themes/gruvbox-dark/background.png";
          blur_passes = 0;
          blur_size = 8;
          contrast = 1;
        }
      ];
      input-field = [
        {
          monitor = "";
          size = "250, 60";
          outline_thickness = 2;
          dots_size = 0.2; # Scale of input-field height, 0.2 - 0.8
          dots_spacing = 0.35; # Scale of dots' absolute size, 0.0 - 1.0
          dots_center = true;
          outer_color = "rgba(0, 0, 0, 0)";
          inner_color = "rgba(0, 0, 0, 0.2)";
          font_color = "${base08}";
          fade_on_empty = false;
          rounding = -1;
          check_color = "rgb(204, 136, 34)";
          placeholder_text = ''<i><span foreground="##cdd6f4">Input Password...</span></i>'';
          hide_input = false;
          position = "0, -200";
          halign = "center";
          valign = "center";
        }
      ];
      label = [
        # DATE
        {
          monitor = "";
          text = ''cmd[update:1000] echo "$(date +"%A, %B %d")"'';
          color = "${base08}";
          font_size = 22;
          position = "0, 300";
          halign = "center";
          valign = "center";
        }
        # TIME
        {
          monitor = "";
          text = ''cmd[update:1000] echo "$(date +"%-I:%M")"'';
          color = "rgba(242, 243, 244, 0.75)";
          font_size = 95;
          position = "0, 200";
          halign = "center";
          valign = "center";
        }
      ];
    };
  };
}