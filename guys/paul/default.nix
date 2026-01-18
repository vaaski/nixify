{
  lib,
  pkgs,
  ...
}: {
  environment.variables = {
    TUCKR_CUSTOM_TARGETS = "paul";
  };

  system.defaults.screencapture.target = lib.mkForce "clipboard";

  my =
    {
      git = {
        userName = "Snoilt";
        userEmail = "paul@oellers.net";
      };
      ssh.authorizedKeys = [
        # todo
      ];
    }

    // lib.optionalAttrs (pkgs.stdenv.hostPlatform.isDarwin) {
      homebrew = {
        taps = [
          "mhaeuser/mhaeuser" # battery toolkit
          "nikitabobko/aerospace" # aerospace app
        ];
        casks = [
          "aerospace"
          "audacity"
          "bambu-studio"
          "battery-toolkit"
          "betterdisplay"
          "blender"
          "codex"
          "dbeaver-community"
          "discord"
          "displaylink"
          "docker-desktop"
          "finicky"
          "hoppscotch"
          "iterm2"
          "jordanbaird-ice@beta"
          "keepingyouawake"
          "leader-key"
          "mullvad-vpn"
          "obs"
          "obsidian"
          "prismlauncher"
          "raspberry-pi-imager"
          "raycast"
          "readdle-spark"
          "spotify"
          "stats"
          "steam"
          "telegram-desktop"
          "the-unarchiver"
          "utm"
          "visual-studio-code"
          "vlc"
          "zen"
        ];
      };
    };
}
