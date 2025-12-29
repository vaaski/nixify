{ pkgs, lib, ... }:

{
  options.my.username = lib.mkOption {
    type = lib.types.str;
    description = "Primary user name used across hosts/platforms.";
  };

  config = {
    my.username = "o";

    nix.settings.experimental-features = "nix-command flakes";

    environment.systemPackages = with pkgs; [
      git
      stow
    ];
  };
}
